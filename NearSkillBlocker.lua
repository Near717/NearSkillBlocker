NEAR_SB = {
	name		= "NearSkillBlocker",
	title 		= "Near's Skill Blocker",
	shortTitle	= "Skill Blocker",
	version		= "3.5.0",
	author		= "|cCC99FFnotnear|r",
}

local addon		= NEAR_SB
local LSB		= LibSkillBlocker

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Registered list
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NEAR_SB.UpdateRegistered()
	local abilityIds = LSB.GetRegisteredAbilityIdsByAddon(addon.name)
    local abilityNames_table = {} -- Create a table to store ability names
	if abilityIds ~= nil then
        for k, v in pairs(abilityIds) do
            local abilityName = zo_strformat("<<C:1>>", GetAbilityName(k))
            table.insert(abilityNames_table, abilityName)
        end
    end
    table.sort(abilityNames_table) -- Sort the ability names alphabetically
    -- TODO: filter out repeated names

    local abilityNames = table.concat(abilityNames_table, '\n') -- Join the sorted names with '\n'
	NEAR_SB.registeredAbilityNames = abilityNames
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Skill Blocker
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

---@param skillType string
---@param ability integer
---@param morph integer
---@param blockType any
local function register(skillType, ability, morph, blockType)
    local sv = NEAR_SB.ASV
	local dbg = NEAR_SB.utils.dbg

    local str_reg = GetString(NEARSB_registered)
	local str_unreg = GetString(NEARSB_unregistered)
    local str_maxcrux = GetString(NEARSB_un_reg_MaxCrux)
    local str_notmaxcrux = GetString(NEARSB_un_reg_NotMaxCrux)
    local str_stacks = GetString(NEARSB_un_reg_stacks)
    local str_recast = GetString(NEARSB_un_reg_recast)
    local str_notincombat = GetString(NEARSB_un_reg_notInCombat)

    local skilldata    = addon.skilldata[skillType]
	local sv_skilldata = sv.skilldata[skillType]

    local function registerBlock(id, skillLine, block_notInCombat)
        LSB.RegisterSkillBlock(addon.name, id, function()
            return addon.suppressCheck(skillType, skillLine, ability, morph, id, blockType, block_notInCombat)
        end, sv.showError)
    end

    local function unregisterBlock(id)
        LSB.UnregisterSkillBlock(addon.name, id)
    end

    for skillLine, v in pairs(skilldata) do
        if sv_skilldata[skillLine][ability] ~= nil then
            local morphData = sv_skilldata[skillLine][ability][morph]
            local block = morphData.block
            local block_recast = morphData.block_recast
            local block_notInCombat = morphData.block_notInCombat
            local block_onMaxCrux = morphData.block_onMaxCrux or false
            local block_onNotMaxCrux = morphData.block_onNotMaxCrux or false
            local block_onStacks = morphData.block_onStacks or false

            local abilityId = v[ability][morph].id

            -- TODO: make this more readable
            if (blockType == 1 and block and not block_notInCombat and not block_recast and not block_onMaxCrux and not block_onNotMaxCrux and not block_onStacks) or
               (blockType == 2 and block_recast and not block_onMaxCrux and not block_onNotMaxCrux and not block_onStacks) or
               (blockType == 3 and block_notInCombat and not block_recast and not block_onMaxCrux and not block_onNotMaxCrux and not block_onStacks) or
               (blockType == 4 and block_onMaxCrux and not block_onNotMaxCrux) or
               (blockType == 5 and block_onNotMaxCrux) or
               (blockType == 6 and block_onStacks) then
                -- Register block
                registerBlock(abilityId, skillLine, block_notInCombat)

                -- Register variant ids if there are any
                for i = 1, 3 do
                    local variantId = v[ability][morph]["id"..i]
                    if variantId ~= nil then
                        registerBlock(variantId, skillLine, block_notInCombat)
                    end
                end

                -- Send message if toggled
                if (sv.message and morphData.msg.re_cast) or
                   (blockType == 1 and sv.debug_init_cast) or
                   (blockType == 2 and sv.debug_init_recast) or
                   (blockType == 3 and sv.debug_combat) or
                   ((blockType == 4 or blockType == 5) and sv.debug_init_crux) then
                    d(dbg.white .. str_reg .. v[ability][morph].name ..
                        ((blockType == 3 and str_notincombat) or
                         (blockType == 2 and str_recast .. (block_notInCombat and ' +' .. str_notincombat or '')) or
                         (blockType == 4 and str_maxcrux .. (block_notInCombat and ' +' .. str_notincombat or '')) or
                         (blockType == 5 and str_notmaxcrux .. (block_notInCombat and ' +' .. str_notincombat or '')) or
                         (blockType == 6 and str_stacks .. (block_notInCombat and ' +' .. str_notincombat or '')) or '')
                    )
                end

                morphData.msg.re_cast = false
            elseif not block and not block_recast and not block_notInCombat and not block_onMaxCrux and not block_onNotMaxCrux and not block_onStacks then
                -- Unregister block
                unregisterBlock(abilityId)

                -- Unregister variant ids if there are any
                for i = 1, 3 do
                    local variantId = v[ability][morph]["id"..i]
                    if variantId ~= nil then
                        unregisterBlock(variantId)
                    end
                end

                -- Send message if toggled
                if (sv.message and morphData.msg.re_cast) or
                   (blockType == 1 and sv.debug_init_cast) or
                   (blockType == 2 and sv.debug_init_recast) or
                   (blockType == 3 and sv.debug_combat) or
                   ((blockType == 4 or blockType == 5) and sv.debug_init_crux and (morphData.block_onMaxCrux ~= nil or morphData.block_onNotMaxCrux ~= nil)) then
                    d(dbg.white .. str_unreg .. v[ability][morph].name ..
                        -- these are only for debug
                        ((blockType == 2 and str_recast) or
                         (blockType == 3 and str_notincombat) or
                         (blockType == 4 and str_maxcrux) or
                         (blockType == 5 and str_notmaxcrux) or '')
                    )
                end

                morphData.msg.re_cast = false
            end
        end
    end
end

function NEAR_SB.Initialize()
	local sv = NEAR_SB.ASV
	local dbg = NEAR_SB.utils.dbg

	--[[ Debug ]] if sv.debug then d(dbg.open) d(dbg.lightGrey .. 'start of addon.Initialize') end

    local skillTypeBlockTypes = {
        ['class']   = { 1, 2, 3, 4, 5, 6 },    -- Cast, Recast, NotInCombat, onMaxCrux, onNotMaxCrux, onStacks
        ['weapon']  = { 1, 2, 3 },          -- Cast, Recast, NotInCombat
        ['armor']   = { 1, 2, 3 },          -- Cast, Recast, NotInCombat
        ['world']   = { 1, 2, 3 },          -- Cast, Recast, NotInCombat
        ['guild']   = { 1, 2, 3 },          -- Cast, Recast, NotInCombat
        ['ava']     = { 1, 2, 3 },          -- Cast, Recast, NotInCombat
    }

    -- Execute register functions
    for skillType, blockTypes in pairs(skillTypeBlockTypes) do
        for _, ability in ipairs({1, 2, 3, 4, 5, 6}) do
            for _, morph in ipairs({0, 1, 2}) do
                for _, blockType in ipairs(blockTypes) do
                    register(skillType, ability, morph, blockType)
                end
            end
        end
    end

	addon.UpdateRegistered()

	--[[ Debug ]] if sv.debug then d(dbg.grey .. 'end of addon.Initialize') d(dbg.close) end
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Addon loading
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
local function OnAddonLoaded(event, name)
	if name ~= addon.name then return end
	EVENT_MANAGER:UnregisterForEvent(addon.name, EVENT_ADD_ON_LOADED)

	addon.ASV = ZO_SavedVars:NewAccountWide(addon.name .. "_Data", 4, GetWorldName(), addon.defaults)

	if addon.ASV.suppressBlockReset then addon.ASV.suppressBlock = addon.defaults.suppressBlock end

	NEAR_SB.Initialize()

	NEAR_SB.RegisterSlashCommands()
	NEAR_SB.SetupSettings()
end

EVENT_MANAGER:RegisterForEvent(addon.name, EVENT_ADD_ON_LOADED, OnAddonLoaded)
