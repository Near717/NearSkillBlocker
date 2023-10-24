NEAR_SB = {
	name		= "NearSkillBlocker",
	title 		= "Near's Skill Blocker",
	shortTitle	= "Skill Blocker",
	version		= "3.3.0",
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
            local abilityName = GetAbilityName(k)
            table.insert(abilityNames_table, abilityName)
        end
    end
    table.sort(abilityNames_table) -- Sort the ability names alphabetically

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
    local str_crux = GetString(NEARSB_un_reg_crux)
    local str_recast = GetString(NEARSB_un_reg_recast)

    local skilldata    = addon.skilldata[skillType]
	local sv_skilldata = sv.skilldata[skillType]

    for skillLine, v in pairs(skilldata) do
        if sv_skilldata[skillLine][ability] ~= nil then
            local block = sv_skilldata[skillLine][ability][morph].block
            local block_recast = sv_skilldata[skillLine][ability][morph].block_recast
            local block_onMaxCrux = sv_skilldata[skillLine][ability][morph].block_onMaxCrux ~= nil and sv_skilldata[skillLine][ability][morph].block_onMaxCrux or false

            if (block and blockType == 1 and not block_recast and not block_onMaxCrux) or (block_recast and blockType == 2 and not block_onMaxCrux) or (block_onMaxCrux and blockType == 3) then
                -- Register block
                LSB.RegisterSkillBlock(addon.name, v[ability][morph].id, function()
                    return addon.suppressCheck(skillType, skillLine, ability, morph, v[ability][morph].id, blockType)
                end, sv.showError)

                -- Register variant ids if there are any
                for i = 1, 3 do
                    local variantId = v[ability][morph]["id"..i]
                    if variantId ~= nil then
                        LSB.RegisterSkillBlock(addon.name, variantId, function()
                            return addon.suppressCheck(skillType, skillLine, ability, morph, variantId, blockType)
                        end, sv.showError)
                    end
                end

                -- Send message if toggled
                if (sv.message and sv_skilldata[skillLine][ability][morph].msg.re_cast) or
                   (blockType == 1 and sv.debug_init_cast) or
                   (blockType == 2 and sv.debug_init_recast) or
                   (blockType == 3 and sv.debug_init_crux) then
                    d(dbg.white .. str_reg .. ' ' .. v[ability][morph].name .. (blockType == 2 and str_recast or blockType == 3 and str_crux or ''))
                end

                sv_skilldata[skillLine][ability][morph].msg.re_cast = false
            elseif not block and not block_recast and not block_onMaxCrux then
                -- Unregister block
                LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)

                -- Unregister variant ids if there are any
                for i = 1, 3 do
                    local variantId = v[ability][morph]["id"..i]
                    if variantId ~= nil then
                        LSB.UnregisterSkillBlock(addon.name, variantId)
                    end
                end

                -- Send message if toggled
                if (sv.message and sv_skilldata[skillLine][ability][morph].msg.re_cast) or
                   (blockType == 1 and sv.debug_init_cast) or
                   (blockType == 2 and sv.debug_init_recast) or
                   (blockType == 3 and sv.debug_init_crux and sv_skilldata[skillLine][ability][morph].block_onMaxCrux ~= nil) then
                    d(dbg.white .. str_unreg .. ' ' .. v[ability][morph].name .. (blockType == 2 and str_recast or blockType == 3 and str_crux or ''))
                end

                sv_skilldata[skillLine][ability][morph].msg.re_cast = false
            end
        end
    end
end

function NEAR_SB.Initialize()
	local sv = NEAR_SB.ASV
	local dbg = NEAR_SB.utils.dbg

	--[[ Debug ]] if sv.debug then d(dbg.open) d(dbg.lightGrey .. 'start of addon.Initialize') end

	-- Execute register functions
	for _, skillType in ipairs({ 'class', 'weapon', 'armor', 'world', 'guild', 'ava' }) do
        for _, ability in ipairs({ 1, 2, 3, 4, 5, 6 }) do
            for _, morph in ipairs({ 0, 1, 2 }) do
                local blockTypes
                if skillType == 'class' then
                    blockTypes = { 1, 2, 3 } -- Cast, Recast and onMaxCrux
                    if sv.debug then d('blockTypes == { 1, 2, 3 }') end
                else
                    blockTypes = { 1, 2 } -- Cast and Recast
                    if sv.debug then d('blockTypes == { 1, 2 }') end
                end

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
