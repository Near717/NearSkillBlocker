NEAR_SB = {
	name		= "NearSkillBlocker",
	title 		= "Near's Skill Blocker",
	shortTitle	= "Skill Blocker",
	version		= "2.1.0",
	author		= "|cCC99FFnotnear|r",
}

local addon		= NEAR_SB
local LSB		= LibSkillBlocker
local isInPvP	= false

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Registered list
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

function addon.UpdateRegistered()
	local abilityIds = LSB.GetRegisteredAbilityIdsByAddon(addon.name)
	local abilityNames = nil

	for k, v in pairs(abilityIds) do
		local abilityName = GetAbilityName(k)
		if abilityNames == nil then
			abilityNames = abilityName
		else
			abilityNames = abilityNames..'\n'..abilityName
		end
	end
	NEAR_SB.registeredAbilityNames = abilityNames
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Skill Blocker
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function addon.Initialize()
	local sv = NEAR_SB.ASV
	local dbg = NEAR_SB.utils.dbg

	local str_reg = GetString(NSB_registered)
	local str_unreg = GetString(NSB_unregistered)

	--[[ Debug ]] if sv.debug then d(dbg.open) d(dbg.lightGrey .. 'start of addon.Initialize') end

	---------------------------------------------------------------------------------
	-- define functions
	---------------------------------------------------------------------------------
	local showError = sv.showError

	---register casts
	---@param skillType string
	---@param ability integer
	---@param morph integer
	local function cast(skillType, ability, morph)
		local skilldata		= addon.skilldata[skillType]
		local sv_skilldata	= sv.skilldata[skillType]

		for skillLine, v in pairs(skilldata) do
			if sv_skilldata[skillLine][ability] ~= nil then
				-- check if skillLine is destruction staff
				if (skillType == 'weapon') and (skillLine == 5) and ((ability == 1) or (ability == 3) or (ability == 4) or (ability == 6)) then
					-- check if its blocking cast and not recast
					if sv_skilldata[skillLine][ability][morph].block and not sv_skilldata[skillLine][ability][morph].block_recast then
						-- register block for different elements ids
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id, nil, showError)
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id1, nil, showError) -- flame version
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id2, nil, showError) -- frost version
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id3, nil, showError) -- shock version
						-- send message if toggled
						if (sv.message and sv_skilldata[skillLine][ability][morph].msg) or sv.debug_init_cast then
							d(dbg.white .. str_reg..' '.. v[ability][morph].name) end
						sv_skilldata[skillLine][ability][morph].msg = false
					elseif not sv_skilldata[skillLine][ability][morph].block and not sv_skilldata[skillLine][ability][morph].block_recast then
						-- if not blocking either cast or recast unregister
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id1) -- flame version
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id2) -- frost version
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id3) -- shock version
						-- send message if toggled
						if (sv.message and sv_skilldata[skillLine][ability][morph].msg) or sv.debug_init_cast then
							d(dbg.white .. str_unreg..' '.. v[ability][morph].name) end
						sv_skilldata[skillLine][ability][morph].msg = false
					end
				else
					-- check if its blocking cast and not recast
					if sv_skilldata[skillLine][ability][morph].block and not sv_skilldata[skillLine][ability][morph].block_recast then
						-- register block
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id, nil, showError)
						-- send message if toggled
						if (sv.message and sv_skilldata[skillLine][ability][morph].msg) or sv.debug_init_cast then
							d(dbg.white .. str_reg..' '.. v[ability][morph].name) end
						sv_skilldata[skillLine][ability][morph].msg = false
					elseif not sv_skilldata[skillLine][ability][morph].block and not sv_skilldata[skillLine][ability][morph].block_recast then
						-- if not blocking either cast or recast unregister
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
						-- send message if toggled
						if (sv.message and sv_skilldata[skillLine][ability][morph].msg) or sv.debug_init_cast then
							d(dbg.white .. str_unreg..' '.. v[ability][morph].name) end
						sv_skilldata[skillLine][ability][morph].msg = false
					end
				end
			end
		end
	end


	---register recasts
	---@param skillType string
	---@param ability integer
	---@param morph integer
	local function recast(skillType, ability, morph)
		local skilldata		= addon.skilldata[skillType]
		local sv_skilldata	= sv.skilldata[skillType]

		for skillLine, v in pairs(skilldata) do
			if sv_skilldata[skillLine][ability] ~= nil then
				-- check if skillLine is destruction staff
				if (skillType == 'weapon') and (skillLine == 5) and ((ability == 1) or (ability == 3) or (ability == 4) or (ability == 6)) then
					-- check if its blocking recast
					if sv_skilldata[skillLine][ability][morph].block_recast then
						-- register for different elements ids
						-- with a custom handler to decide when it should block or not
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id,  function () return addon.BlockRecasts(skillType, skillLine, ability, morph) end, showError)
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id1, function () return addon.BlockRecasts(skillType, skillLine, ability, morph) end, showError) -- flame version
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id2, function () return addon.BlockRecasts(skillType, skillLine, ability, morph) end, showError) -- frost version
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id3, function () return addon.BlockRecasts(skillType, skillLine, ability, morph) end, showError) -- shock version
						-- send message if toggled
						if (sv.message and sv_skilldata[skillLine][ability][morph].msg) or sv.debug_init_recast then
							d(dbg.white .. str_reg..' '.. v[ability][morph].name ..' recast') end
						sv_skilldata[skillLine][ability][morph].msg = false
					elseif not sv_skilldata[skillLine][ability][morph].block_recast and not sv_skilldata[skillLine][ability][morph].block then
						-- if not blocking either cast or recast unregister
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id1) -- flame version
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id2) -- frost version
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id3) -- shock version
						-- send message if toggled
						if (sv.message and sv_skilldata[skillLine][ability][morph].msg) or sv.debug_init_recast then
							d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' recast') end
						sv_skilldata[skillLine][ability][morph].msg = false
					end
				else
					-- check if its blocking recast
					if sv_skilldata[skillLine][ability][morph].block_recast then
						-- register with a custom handler to decide when it should block or not
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id, function () return addon.BlockRecasts(skillType, skillLine, ability, morph) end, showError)
						-- send message if toggled
						if (sv.message and sv_skilldata[skillLine][ability][morph].msg) or sv.debug_init_recast then
							d(dbg.white .. str_reg..' '.. v[ability][morph].name ..' recast') end
						sv_skilldata[skillLine][ability][morph].msg = false
					elseif not sv_skilldata[skillLine][ability][morph].block_recast and not sv_skilldata[skillLine][ability][morph].block then
						-- if not blocking either cast or recast unregister
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
						-- send message if toggled
						if (sv.message and sv_skilldata[skillLine][ability][morph].msg) or sv.debug_init_recast then
							d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' recast') end
						sv_skilldata[skillLine][ability][morph].msg = false
					end
				end
			end
		end
	end


	---unregister pvp
	---@param skillType string
	---@param ability integer
	---@param morph integer
	local function pvp(skillType, ability, morph)
		local skilldata		= addon.skilldata[skillType]
		local sv_skilldata	= sv.skilldata[skillType]

		for skillLine, v in pairs(skilldata) do
			if sv_skilldata[skillLine][ability] ~= nil then
				-- check if skillLine is destruction staff
				if (skillType == 'weapon') and (skillLine == 5) and ((ability == 1) or (ability == 3) or (ability == 4) or (ability == 6)) then
					-- check if its blocking the skill while on pvp zones, is on pvp zone and is not blocking everything on pvp
					if not sv_skilldata[skillLine][ability][morph].pvp and isInPvP and not sv.blockPvP then
						-- if not blocking on pvp unregister
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id1) -- flame version
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id2) -- frost version
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id3) -- shock version
						-- send message if toggled
						if (sv.message and sv_skilldata[skillLine][ability][morph].msg) or sv.debug_init_pvp then
							d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' *PvP') end
						sv_skilldata[skillLine][ability][morph].msg = false
					end
				else
					-- check if its blocking the skill while on pvp zones, is on pvp zone and is not blocking everything on pvp
					if not sv_skilldata[skillLine][ability][morph].pvp and isInPvP and not sv.blockPvP then
						-- if not blocking on pvp unregister
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
						-- send message if toggled
						if (sv.message and sv_skilldata[skillLine][ability][morph].msg) or sv.debug_init_pvp then
							d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' *PvP') end
						sv_skilldata[skillLine][ability][morph].msg = false
					end
				end
			end
		end
	end

	---------------------------------------------------------------------------------
	-- execute functions
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
	-- PVP
	----------------------------------------
		-- Ability 1
		--------------------
		pvp(skillType, 1, 0)
		pvp(skillType, 1, 1)
		pvp(skillType, 1, 2)
		-- Ability 2
		--------------------
		pvp(skillType, 2, 0)
		pvp(skillType, 2, 1)
		pvp(skillType, 2, 2)
		-- Ability 3
		--------------------
		pvp(skillType, 3, 0)
		pvp(skillType, 3, 1)
		pvp(skillType, 3, 2)
		-- Ability 4
		--------------------
		pvp(skillType, 4, 0)
		pvp(skillType, 4, 1)
		pvp(skillType, 4, 2)
		-- Ability 5
		--------------------
		pvp(skillType, 5, 0)
		pvp(skillType, 5, 1)
		pvp(skillType, 5, 2)
		-- Ability 6
		--------------------
		pvp(skillType, 6, 0)
		pvp(skillType, 6, 1)
		pvp(skillType, 6, 2)
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
	-- PVP
	----------------------------------------
		-- Ability 1
		--------------------
		pvp(skillType, 1, 0)
		pvp(skillType, 1, 1)
		pvp(skillType, 1, 2)
		-- Ability 2
		--------------------
		pvp(skillType, 2, 0)
		pvp(skillType, 2, 1)
		pvp(skillType, 2, 2)
		-- Ability 3
		--------------------
		pvp(skillType, 3, 0)
		pvp(skillType, 3, 1)
		pvp(skillType, 3, 2)
		-- Ability 4
		--------------------
		pvp(skillType, 4, 0)
		pvp(skillType, 4, 1)
		pvp(skillType, 4, 2)
		-- Ability 5
		--------------------
		pvp(skillType, 5, 0)
		pvp(skillType, 5, 1)
		pvp(skillType, 5, 2)
		-- Ability 6
		--------------------
		pvp(skillType, 6, 0)
		pvp(skillType, 6, 1)
		pvp(skillType, 6, 2)
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
	-- PVP
	----------------------------------------
		-- Ability 1
		--------------------
		pvp(skillType, 1, 0)
		pvp(skillType, 1, 1)
		pvp(skillType, 1, 2)
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
	-- PVP
	----------------------------------------
		-- Ability 1
		--------------------
		pvp(skillType, 1, 0)
		pvp(skillType, 1, 1)
		pvp(skillType, 1, 2)
		-- Ability 2
		--------------------
		pvp(skillType, 2, 0)
		pvp(skillType, 2, 1)
		pvp(skillType, 2, 2)
		-- Ability 3
		--------------------
		pvp(skillType, 3, 0)
		pvp(skillType, 3, 1)
		pvp(skillType, 3, 2)
		-- Ability 4
		--------------------
		pvp(skillType, 4, 0)
		pvp(skillType, 4, 1)
		pvp(skillType, 4, 2)
		-- Ability 5
		--------------------
		pvp(skillType, 5, 0)
		pvp(skillType, 5, 1)
		pvp(skillType, 5, 2)
		-- Ability 6
		--------------------
		pvp(skillType, 6, 0)
		pvp(skillType, 6, 1)
		pvp(skillType, 6, 2)
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
	-- PVP
	----------------------------------------
		-- Ability 1
		--------------------
		pvp(skillType, 1, 0)
		pvp(skillType, 1, 1)
		pvp(skillType, 1, 2)
		-- Ability 2
		--------------------
		pvp(skillType, 2, 0)
		pvp(skillType, 2, 1)
		pvp(skillType, 2, 2)
		-- Ability 3
		--------------------
		pvp(skillType, 3, 0)
		pvp(skillType, 3, 1)
		pvp(skillType, 3, 2)
		-- Ability 4
		--------------------
		pvp(skillType, 4, 0)
		pvp(skillType, 4, 1)
		pvp(skillType, 4, 2)
		-- Ability 5
		--------------------
		pvp(skillType, 5, 0)
		pvp(skillType, 5, 1)
		pvp(skillType, 5, 2)
		-- Ability 6
		--------------------
		pvp(skillType, 6, 0)
		pvp(skillType, 6, 1)
		pvp(skillType, 6, 2)
	----------------------------------------


	----------------------------------------
		skillType = 'ava'
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
	-- AvA
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
	-- PVP
	----------------------------------------
		-- Ability 1
		--------------------
		pvp(skillType, 1, 0)
		pvp(skillType, 1, 1)
		pvp(skillType, 1, 2)
		-- Ability 2
		--------------------
		pvp(skillType, 2, 0)
		pvp(skillType, 2, 1)
		pvp(skillType, 2, 2)
		-- Ability 3
		--------------------
		pvp(skillType, 3, 0)
		pvp(skillType, 3, 1)
		pvp(skillType, 3, 2)
		-- Ability 4
		--------------------
		pvp(skillType, 4, 0)
		pvp(skillType, 4, 1)
		pvp(skillType, 4, 2)
		-- Ability 5
		--------------------
		pvp(skillType, 5, 0)
		pvp(skillType, 5, 1)
		pvp(skillType, 5, 2)
	----------------------------------------

	addon.UpdateRegistered()

	--[[ Debug ]] if sv.debug then d(dbg.grey .. 'end of addon.Initialize') d(dbg.close) end
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Block PvP
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

local function OnZoneChange()
	local sv = NEAR_SB.ASV
	local dbg = NEAR_SB.utils.dbg

	--[[ Debug ]] if sv.debug_zone then d(dbg.open) d(dbg.lightGrey .. 'start of OnZoneChange') end

	if not sv.blockPvP and (IsPlayerInAvAWorld() or IsActiveWorldBattleground()) then
		--[[ Debug ]] if sv.debug_zone then d(dbg.white .. 'blockPvP = ' .. tostring(sv.blockPvP)) end
		--[[ Debug ]] if sv.debug_zone then d(dbg.white .. 'IsPlayerInAvAWorld = ' .. tostring(IsPlayerInAvAWorld())) end
		--[[ Debug ]] if sv.debug_zone then d(dbg.white .. 'IsActiveWorldBattleground = ' .. tostring(IsActiveWorldBattleground())) end

		isInPvP = true --[[ Debug ]] if sv.debug_zone then d(dbg.white .. 'isInPvP = ' .. tostring(isInPvP)) end
	else
		isInPvP = false --[[ Debug ]] if sv.debug_zone then d(dbg.white .. 'isInPvP = ' .. tostring(isInPvP)) end
	end

	addon.Initialize()

	--[[ Debug ]] if sv.debug_zone then d(dbg.grey .. 'end of OnZoneChange') d(dbg.close) end
end

-- Toggle Event Zone Changed
function addon.EZC()
	local sv = NEAR_SB.ASV
	local dbg = NEAR_SB.utils.dbg

	--[[ Debug ]] if sv.debug_zone then d(dbg.open) d(dbg.lightGrey .. 'start of addon.EZC') end

	if not sv.blockPvP then
		EVENT_MANAGER:RegisterForEvent(addon.name, EVENT_ZONE_CHANGED, OnZoneChange)
		--[[ Debug ]] if sv.debug_zone then d(dbg.white .. 'registered EVENT_ZONE_CHANGED') end
		--[[ Debug ]] if sv.debug_zone then d(dbg.white .. 'IsPlayerInAvAWorld = ' .. tostring(IsPlayerInAvAWorld())) end
		--[[ Debug ]] if sv.debug_zone then d(dbg.white .. 'IsActiveWorldBattleground = ' .. tostring(IsActiveWorldBattleground())) end

		if IsPlayerInAvAWorld() or IsActiveWorldBattleground() then
			isInPvP = true --[[ Debug ]] if sv.debug_zone then d(dbg.white .. 'isInPvP = ' .. tostring(isInPvP)) end
		else
			isInPvP = false --[[ Debug ]] if sv.debug_zone then d(dbg.white .. 'isInPvP = ' .. tostring(isInPvP)) end
		end
	else
		EVENT_MANAGER:UnregisterForEvent(addon.name, EVENT_ZONE_CHANGED)
		--[[ Debug ]] if sv.debug_zone then d(dbg.white .. 'unregistered EVENT_ZONE_CHANGED') end
	end

	addon.Initialize()

	--[[ Debug ]] if sv.debug_zone then d(dbg.grey .. 'end of addon.EZC') d(dbg.close) end
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Addon loading
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
local function OnAddonLoaded(event, name)
	if name ~= addon.name then return end
	EVENT_MANAGER:UnregisterForEvent(addon.name, EVENT_ADD_ON_LOADED)

	addon.ASV = ZO_SavedVars:NewAccountWide(addon.name .. "_Data", 3, nil, addon.defaults)

	NEAR_SB.EZC()

	NEAR_SB.RegisterSlashCommands()
	NEAR_SB.SetupSettings()
end

EVENT_MANAGER:RegisterForEvent(addon.name, EVENT_ADD_ON_LOADED, OnAddonLoaded)
