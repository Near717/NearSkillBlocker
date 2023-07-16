NEAR_SB = {
	name		= "NearSkillBlocker",
	title 		= "Near's Skill Blocker",
	shortTitle	= "Skill Blocker",
	version		= "3.2.0",
	author		= "|cCC99FFnotnear|r",
}

local addon		= NEAR_SB
local LSB		= LibSkillBlocker

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Registered list
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NEAR_SB.UpdateRegistered()
	local abilityIds = LSB.GetRegisteredAbilityIdsByAddon(addon.name)
	local abilityNames = nil
	if abilityIds ~= nil then
		for k, v in pairs(abilityIds) do
			local abilityName = GetAbilityName(k)
			if abilityNames == nil then
				abilityNames = abilityName
			else
				abilityNames = abilityNames..'\n'..abilityName
			end
		end
	end
	NEAR_SB.registeredAbilityNames = abilityNames
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Skill Blocker
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NEAR_SB.Initialize()
	local sv = NEAR_SB.ASV
	local dbg = NEAR_SB.utils.dbg

	local str_reg = GetString(NEARSB_registered)
	local str_unreg = GetString(NEARSB_unregistered)

	--[[ Debug ]] if sv.debug then d(dbg.open) d(dbg.lightGrey .. 'start of addon.Initialize') end

	---------------------------------------------------------------------------------
	-- define register functions
	---------------------------------------------------------------------------------

	---register casts
	---@param skillType string
	---@param ability integer
	---@param morph integer
	local function cast(skillType, ability, morph)
		local skilldata    = addon.skilldata[skillType]
		local sv_skilldata = sv.skilldata[skillType]
		local type = 1 -- run BlockPvP under supressCheck

		for skillLine, v in pairs(skilldata) do
			if sv_skilldata[skillLine][ability] ~= nil then
				-- check if its blocking cast and not recast
				if sv_skilldata[skillLine][ability][morph].block and not sv_skilldata[skillLine][ability][morph].block_recast then
					-- register block
					LSB.RegisterSkillBlock(addon.name, v[ability][morph].id, function() return addon.supressCheck(type, skillType, skillLine, ability, morph) end, sv.showError)
					-- register variant ids if there are any
					if v[ability][morph].id1 ~= nil then
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id1, function() return addon.supressCheck(type, skillType, skillLine, ability, morph) end, sv.showError)
					end
					if v[ability][morph].id2 ~= nil then
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id2, function() return addon.supressCheck(type, skillType, skillLine, ability, morph) end, sv.showError)
					end
					if v[ability][morph].id3 ~= nil then
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id3, function() return addon.supressCheck(type, skillType, skillLine, ability, morph) end, sv.showError)
					end
					-- send message if toggled
					if (sv.message and sv_skilldata[skillLine][ability][morph].msg.re_cast) or sv.debug_init_cast then
						d(dbg.white .. str_reg .. ' ' .. v[ability][morph].name)
					end
					sv_skilldata[skillLine][ability][morph].msg.re_cast = false
				elseif not sv_skilldata[skillLine][ability][morph].block and not sv_skilldata[skillLine][ability][morph].block_recast then
					-- if not blocking either cast or recast unregister
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					-- unregister variant ids if there are any
					if v[ability][morph].id1 ~= nil then
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id1)
					end
					if v[ability][morph].id2 ~= nil then
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id2)
					end
					if v[ability][morph].id3 ~= nil then
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id3)
					end
					-- send message if toggled
					if (sv.message and sv_skilldata[skillLine][ability][morph].msg.re_cast) or sv.debug_init_cast then
						d(dbg.white .. str_unreg .. ' ' .. v[ability][morph].name)
					end
					sv_skilldata[skillLine][ability][morph].msg.re_cast = false
				end
			end
		end
	end


	---register recasts
	---@param skillType string
	---@param ability integer
	---@param morph integer
	local function recast(skillType, ability, morph)
		local skilldata    = addon.skilldata[skillType]
		local sv_skilldata = sv.skilldata[skillType]
		local type = 2 -- run BlockRecasts under supressCheck

		for skillLine, v in pairs(skilldata) do
			if sv_skilldata[skillLine][ability] ~= nil then
				-- check if its blocking recast
				if sv_skilldata[skillLine][ability][morph].block_recast then
					-- register with a custom handler to decide when it should block or not
					LSB.RegisterSkillBlock(addon.name, v[ability][morph].id, function() return addon.supressCheck(type, skillType, skillLine, ability, morph, v[ability][morph].id) end, sv.showError)
					-- register variant ids if there are any
					if v[ability][morph].id1 ~= nil then
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id1, function() return addon.supressCheck(type, skillType, skillLine, ability, morph, v[ability][morph].id1) end, sv.showError)
					end
					if v[ability][morph].id2 ~= nil then
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id2, function() return addon.supressCheck(type, skillType, skillLine, ability, morph, v[ability][morph].id2) end, sv.showError)
					end
					if v[ability][morph].id3 ~= nil then
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id3, function() return addon.supressCheck(type, skillType, skillLine, ability, morph, v[ability][morph].id3) end, sv.showError)
					end
					-- send message if toggled
					if (sv.message and sv_skilldata[skillLine][ability][morph].msg.re_cast) or sv.debug_init_recast then
						d(dbg.white .. str_reg .. ' ' .. v[ability][morph].name .. ' recast')
					end
					sv_skilldata[skillLine][ability][morph].msg.re_cast = false
				elseif not sv_skilldata[skillLine][ability][morph].block_recast and not sv_skilldata[skillLine][ability][morph].block then
					-- if not blocking either cast or recast unregister
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					-- unregister variant ids if there are any
					if v[ability][morph].id1 ~= nil then
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id1)
					end
					if v[ability][morph].id2 ~= nil then
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id2)
					end
					if v[ability][morph].id3 ~= nil then
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id3)
					end
					-- send message if toggled
					if (sv.message and sv_skilldata[skillLine][ability][morph].msg.re_cast) or sv.debug_init_recast then
						d(dbg.white .. str_unreg .. ' ' .. v[ability][morph].name .. ' recast')
					end
					sv_skilldata[skillLine][ability][morph].msg.re_cast = false
				end
			end
		end
	end


	---------------------------------------------------------------------------------
	-- execute register functions
	---------------------------------------------------------------------------------

	local skillType

	----------------------------------------
		skillType = 'class'
	----------------------------------------
	-- CAST
	----------------------------------------
		-- Ability 1
		--------------------
		cast(skillType, 1, 0)
		cast(skillType, 1, 1)
		cast(skillType, 1, 2)
		-- Ability 2
		--------------------
		cast(skillType, 2, 0)
		cast(skillType, 2, 1)
		cast(skillType, 2, 2)
		-- Ability 3
		--------------------
		cast(skillType, 3, 0)
		cast(skillType, 3, 1)
		cast(skillType, 3, 2)
		-- Ability 4
		--------------------
		cast(skillType, 4, 0)
		cast(skillType, 4, 1)
		cast(skillType, 4, 2)
		-- Ability 5
		--------------------
		cast(skillType, 5, 0)
		cast(skillType, 5, 1)
		cast(skillType, 5, 2)
		-- Ability 6
		--------------------
		cast(skillType, 6, 0)
		cast(skillType, 6, 1)
		cast(skillType, 6, 2)
	----------------------------------------
	-- RECAST
	----------------------------------------
		-- Ability 1
		--------------------
		recast(skillType, 1, 0)
		recast(skillType, 1, 1)
		recast(skillType, 1, 2)
		-- Ability 2
		--------------------
		recast(skillType, 2, 0)
		recast(skillType, 2, 1)
		recast(skillType, 2, 2)
		-- Ability 3
		--------------------
		recast(skillType, 3, 0)
		recast(skillType, 3, 1)
		recast(skillType, 3, 2)
		-- Ability 4
		--------------------
		recast(skillType, 4, 0)
		recast(skillType, 4, 1)
		recast(skillType, 4, 2)
		-- Ability 5
		--------------------
		recast(skillType, 5, 0)
		recast(skillType, 5, 1)
		recast(skillType, 5, 2)
		-- Ability 6
		--------------------
		recast(skillType, 6, 0)
		recast(skillType, 6, 1)
		recast(skillType, 6, 2)
	----------------------------------------


	----------------------------------------
		skillType = 'weapon'
	----------------------------------------
	-- CAST
	----------------------------------------
		-- Ability 1
		--------------------
		cast(skillType, 1, 0)
		cast(skillType, 1, 1)
		cast(skillType, 1, 2)
		-- Ability 2
		--------------------
		cast(skillType, 2, 0)
		cast(skillType, 2, 1)
		cast(skillType, 2, 2)
		-- Ability 3
		--------------------
		cast(skillType, 3, 0)
		cast(skillType, 3, 1)
		cast(skillType, 3, 2)
		-- Ability 4
		--------------------
		cast(skillType, 4, 0)
		cast(skillType, 4, 1)
		cast(skillType, 4, 2)
		-- Ability 5
		--------------------
		cast(skillType, 5, 0)
		cast(skillType, 5, 1)
		cast(skillType, 5, 2)
		-- Ability 6
		--------------------
		cast(skillType, 6, 0)
		cast(skillType, 6, 1)
		cast(skillType, 6, 2)
	----------------------------------------
	-- RECAST
	----------------------------------------
		-- Ability 1
		--------------------
		recast(skillType, 1, 0)
		recast(skillType, 1, 1)
		recast(skillType, 1, 2)
		-- Ability 2
		--------------------
		recast(skillType, 2, 0)
		recast(skillType, 2, 1)
		recast(skillType, 2, 2)
		-- Ability 3
		--------------------
		recast(skillType, 3, 0)
		recast(skillType, 3, 1)
		recast(skillType, 3, 2)
		-- Ability 4
		--------------------
		recast(skillType, 4, 0)
		recast(skillType, 4, 1)
		recast(skillType, 4, 2)
		-- Ability 5
		--------------------
		recast(skillType, 5, 0)
		recast(skillType, 5, 1)
		recast(skillType, 5, 2)
		-- Ability 6
		--------------------
		recast(skillType, 6, 0)
		recast(skillType, 6, 1)
		recast(skillType, 6, 2)
	----------------------------------------


	----------------------------------------
		skillType = 'armor'
	----------------------------------------
	-- CAST
	----------------------------------------
		-- Ability 1
		--------------------
		cast(skillType, 1, 0)
		cast(skillType, 1, 1)
		cast(skillType, 1, 2)
	----------------------------------------
	-- RECAST
	----------------------------------------
		-- Ability 1
		--------------------
		recast(skillType, 1, 0)
		recast(skillType, 1, 1)
		recast(skillType, 1, 2)
	----------------------------------------


	----------------------------------------
		skillType = 'world'
	----------------------------------------
	-- CAST
	----------------------------------------
		-- Ability 1
		--------------------
		cast(skillType, 1, 0)
		cast(skillType, 1, 1)
		cast(skillType, 1, 2)
		-- Ability 2
		--------------------
		cast(skillType, 2, 0)
		cast(skillType, 2, 1)
		cast(skillType, 2, 2)
		-- Ability 3
		--------------------
		cast(skillType, 3, 0)
		cast(skillType, 3, 1)
		cast(skillType, 3, 2)
		-- Ability 4
		--------------------
		cast(skillType, 4, 0)
		cast(skillType, 4, 1)
		cast(skillType, 4, 2)
		-- Ability 5
		--------------------
		cast(skillType, 5, 0)
		cast(skillType, 5, 1)
		cast(skillType, 5, 2)
		-- Ability 6
		--------------------
		cast(skillType, 6, 0)
		cast(skillType, 6, 1)
		cast(skillType, 6, 2)
	----------------------------------------
	-- RECAST
	----------------------------------------
		-- Ability 1
		--------------------
		recast(skillType, 1, 0)
		recast(skillType, 1, 1)
		recast(skillType, 1, 2)
		-- Ability 2
		--------------------
		recast(skillType, 2, 0)
		recast(skillType, 2, 1)
		recast(skillType, 2, 2)
		-- Ability 3
		--------------------
		recast(skillType, 3, 0)
		recast(skillType, 3, 1)
		recast(skillType, 3, 2)
		-- Ability 4
		--------------------
		recast(skillType, 4, 0)
		recast(skillType, 4, 1)
		recast(skillType, 4, 2)
		-- Ability 5
		--------------------
		recast(skillType, 5, 0)
		recast(skillType, 5, 1)
		recast(skillType, 5, 2)
		-- Ability 6
		--------------------
		recast(skillType, 6, 0)
		recast(skillType, 6, 1)
		recast(skillType, 6, 2)
	----------------------------------------


	----------------------------------------
		skillType = 'guild'
	----------------------------------------
		-- CAST
	----------------------------------------
		-- Ability 1
		--------------------
		cast(skillType, 1, 0)
		cast(skillType, 1, 1)
		cast(skillType, 1, 2)
		-- Ability 2
		--------------------
		cast(skillType, 2, 0)
		cast(skillType, 2, 1)
		cast(skillType, 2, 2)
		-- Ability 3
		--------------------
		cast(skillType, 3, 0)
		cast(skillType, 3, 1)
		cast(skillType, 3, 2)
		-- Ability 4
		--------------------
		cast(skillType, 4, 0)
		cast(skillType, 4, 1)
		cast(skillType, 4, 2)
		-- Ability 5
		--------------------
		cast(skillType, 5, 0)
		cast(skillType, 5, 1)
		cast(skillType, 5, 2)
		-- Ability 6
		--------------------
		cast(skillType, 6, 0)
		cast(skillType, 6, 1)
		cast(skillType, 6, 2)
	----------------------------------------
	-- RECAST
	----------------------------------------
		-- Ability 1
		--------------------
		recast(skillType, 1, 0)
		recast(skillType, 1, 1)
		recast(skillType, 1, 2)
		-- Ability 2
		--------------------
		recast(skillType, 2, 0)
		recast(skillType, 2, 1)
		recast(skillType, 2, 2)
		-- Ability 3
		--------------------
		recast(skillType, 3, 0)
		recast(skillType, 3, 1)
		recast(skillType, 3, 2)
		-- Ability 4
		--------------------
		recast(skillType, 4, 0)
		recast(skillType, 4, 1)
		recast(skillType, 4, 2)
		-- Ability 5
		--------------------
		recast(skillType, 5, 0)
		recast(skillType, 5, 1)
		recast(skillType, 5, 2)
		-- Ability 6
		--------------------
		recast(skillType, 6, 0)
		recast(skillType, 6, 1)
		recast(skillType, 6, 2)
	----------------------------------------


	----------------------------------------
		skillType = 'ava'
	----------------------------------------
		-- CAST
	----------------------------------------
		-- Ability 1
		--------------------
		cast(skillType, 1, 0)
		cast(skillType, 1, 1)
		cast(skillType, 1, 2)
		-- Ability 2
		--------------------
		cast(skillType, 2, 0)
		cast(skillType, 2, 1)
		cast(skillType, 2, 2)
		-- Ability 3
		--------------------
		cast(skillType, 3, 0)
		cast(skillType, 3, 1)
		cast(skillType, 3, 2)
		-- Ability 4
		--------------------
		cast(skillType, 4, 0)
		cast(skillType, 4, 1)
		cast(skillType, 4, 2)
		-- Ability 5
		--------------------
		cast(skillType, 5, 0)
		cast(skillType, 5, 1)
		cast(skillType, 5, 2)
	----------------------------------------
	-- RECAST
	----------------------------------------
		-- Ability 1
		--------------------
		recast(skillType, 1, 0)
		recast(skillType, 1, 1)
		recast(skillType, 1, 2)
		-- Ability 2
		--------------------
		recast(skillType, 2, 0)
		recast(skillType, 2, 1)
		recast(skillType, 2, 2)
		-- Ability 3
		--------------------
		recast(skillType, 3, 0)
		recast(skillType, 3, 1)
		recast(skillType, 3, 2)
		-- Ability 4
		--------------------
		recast(skillType, 4, 0)
		recast(skillType, 4, 1)
		recast(skillType, 4, 2)
		-- Ability 5
		--------------------
		recast(skillType, 5, 0)
		recast(skillType, 5, 1)
		recast(skillType, 5, 2)
	----------------------------------------

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

	NEAR_SB.Initialize()

	NEAR_SB.RegisterSlashCommands()
	NEAR_SB.SetupSettings()
end

EVENT_MANAGER:RegisterForEvent(addon.name, EVENT_ADD_ON_LOADED, OnAddonLoaded)
