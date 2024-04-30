NEAR_SB = {
	name = "NearSkillBlocker",
	title = "Near's Skill Blocker",
	shortTitle = "Skill Blocker",
	version = "3.6.0",
	author = "|cCC99FFnotnear|r",
}

local addon = NEAR_SB
local LSB = LibSkillBlocker

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Registered list
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

local function updateRegistered()
	local customNames = {
		[addon.skilldata["ava"][3][6][0].id] = addon.skilldata["ava"][3][6][0].name,
		[addon.skilldata["ava"][3][6][1].id] = addon.skilldata["ava"][3][6][1].name,
		[addon.skilldata["ava"][3][6][2].id] = addon.skilldata["ava"][3][6][2].name,
	}

	local abilityIds = LSB.GetRegisteredAbilityIdsByAddon(addon.name)
	local abilityNames_set = {}

	if abilityIds ~= nil then
		for k, _ in pairs(abilityIds) do
			local abilityName
			if customNames[k] then
				abilityName = customNames[k]
			else
				abilityName = zo_strformat("<<C:1>>", GetAbilityName(k))
			end
			abilityNames_set[abilityName] = true
		end
	end

	-- Convert the set to a sorted list
	local abilityNames_table = {}
	for name, _ in pairs(abilityNames_set) do
		table.insert(abilityNames_table, name)
	end
	table.sort(abilityNames_table)

	local abilityNames = table.concat(abilityNames_table, '\n')
	NEAR_SB.registeredAbilityNames = abilityNames
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Skill Blocker
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

local function checkConditions(morphData, blockType)
	local block = morphData.block
	local block_recast = morphData.block_recast
	local block_notInCombat = morphData.block_notInCombat
	local block_onMaxCrux = morphData.block_onMaxCrux or false
	local block_onNotMaxCrux = morphData.block_onNotMaxCrux or false
	local block_onStacksEqual = morphData.block_onStacksEqual or false

	local conditions = {
		[0] = { not block, not block_notInCombat, not block_recast, not block_onMaxCrux, not block_onNotMaxCrux, not block_onStacksEqual }, -- Conditions for unregisterBlock
		[1] = { block, not block_notInCombat, not block_recast, not block_onMaxCrux, not block_onNotMaxCrux, not block_onStacksEqual },
		[2] = { block_recast, not block_onMaxCrux, not block_onNotMaxCrux, not block_onStacksEqual },
		[3] = { block_notInCombat, not block_recast, not block_onMaxCrux, not block_onNotMaxCrux, not block_onStacksEqual },
		[4] = { block_onMaxCrux, not block_onNotMaxCrux },
		[5] = { block_onNotMaxCrux },
		[6] = { block_onStacksEqual },
	}

	local cond = conditions[blockType]
	if not cond then return false end -- If invalid blockType
	for _, c in ipairs(cond) do
		if not c then
			return false
		end
	end
	return true
end

local str_reg = GetString(NEARSB_registered)
local str_unreg = GetString(NEARSB_unregistered)
local str_maxcrux = GetString(NEARSB_un_reg_MaxCrux)
local str_notmaxcrux = GetString(NEARSB_un_reg_NotMaxCrux)
local str_stacks = GetString(NEARSB_un_reg_stacks)
local str_recast = GetString(NEARSB_un_reg_recast)
local str_notincombat = GetString(NEARSB_un_reg_notInCombat)

---@param skillType string
---@param ability integer
---@param morph integer
---@param blockType any
local function register(skillType, ability, morph, blockType)
	local sv = NEAR_SB.ASV

	local skilldata = addon.skilldata[skillType]
	local sv_skilldata = sv.skilldata[skillType]

	local function registerBlock(id, skillLine, block_notInCombat)
		LSB.RegisterSkillBlock(addon.name, id,
			function() return addon.suppressCheck(skillType, skillLine, ability, morph, id, blockType, block_notInCombat) end,
			sv.showError
		)
	end

	local function unregisterBlock(id)
		LSB.UnregisterSkillBlock(addon.name, id)
	end

	for skillLine, v in pairs(skilldata) do
		if sv_skilldata[skillLine][ability] ~= nil then
			local morphData = sv_skilldata[skillLine][ability][morph]
			local block_notInCombat = morphData.block_notInCombat

			local abilityId = v[ability][morph].id

			if checkConditions(morphData, blockType) then
				-- Register block
				registerBlock(abilityId, skillLine, block_notInCombat)

				-- Register variant ids if there are any
				local i = 1
				while true do
					local variantId = v[ability][morph]["id" .. i]
					if variantId == nil then
						break -- Exit the loop if there's no variant id
					end
					registerBlock(variantId, skillLine, block_notInCombat)
					i = i + 1
				end

				-- Send message if toggled
				if sv.message and morphData.msg.re_cast then
					local message = str_reg .. v[ability][morph].name
					if blockType == 3 then
						message = message .. str_notincombat
					elseif blockType ~= 1 then
						local prefix = (blockType == 2 and str_recast) or
							(blockType == 4 and str_maxcrux) or
							(blockType == 5 and str_notmaxcrux) or
							(blockType == 6 and str_stacks) or ''
						local suffix = block_notInCombat and ' +' .. str_notincombat or ''
						message = message .. prefix .. suffix
					end
					addon.AddMessage(message)
				end

				morphData.msg.re_cast = false
			elseif checkConditions(morphData, 0) then
				-- Unregister block
				unregisterBlock(abilityId)

				-- Unregister variant ids if there are any
				local i = 1
				while true do
					local variantId = v[ability][morph]["id" .. i]
					if variantId == nil then
						break -- Exit the loop if there's no variant id
					end
					unregisterBlock(variantId)
					i = i + 1
				end

				-- Send message if toggled
				if sv.message and morphData.msg.re_cast then
					local message = str_unreg .. v[ability][morph].name
					addon.AddMessage(message)
				end

				morphData.msg.re_cast = false
			end
		end
	end
end

function NEAR_SB.Initialize()
	local skillTypeBlockTypes = {
		['class'] = { 1, 2, 3, 4, 5, 6 }, -- Cast, Recast, NotInCombat, onMaxCrux, onNotMaxCrux, onStacksEqual
		['weapon'] = { 1, 2, 3 },
		['armor'] = { 1, 2, 3 },
		['world'] = { 1, 2, 3 },
		['guild'] = { 1, 2, 3 },
		['ava'] = { 1, 2, 3 },
	}

	-- Execute register functions
	for skillType, blockTypes in pairs(skillTypeBlockTypes) do
		for _, ability in ipairs({ 1, 2, 3, 4, 5, 6 }) do
			for _, morph in ipairs({ 0, 1, 2 }) do
				for _, blockType in ipairs(blockTypes) do
					register(skillType, ability, morph, blockType)
				end
			end
		end
	end

	updateRegistered()
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

	NEAR_SB.AbilityBarTimers.Init()
	NEAR_SB.RegisterSlashCommands()
	NEAR_SB.SetupSettings()
end

EVENT_MANAGER:RegisterForEvent(addon.name, EVENT_ADD_ON_LOADED, OnAddonLoaded)
