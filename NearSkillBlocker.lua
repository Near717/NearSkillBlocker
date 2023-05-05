NEAR_SB = {
	name 		= "NearSkillBlocker",
    title 		= "Near's Skill Blocker",
    shortTitle 	= "Skill Blocker",
	version 	= "2.1.0",
	author 		= "|cCC99FFnotnear|r",
}

local addon = NEAR_SB
local LSB = LibSkillBlocker
local isInPvP = false

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Skill Blocker
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function addon.Initialize()
	local sv = NEAR_SB.ASV
	local dbg = NEAR_SB.utils.dbg

	local str_reg = GetString(NSB_registered)
	local str_unreg = GetString(NSB_unregistered)

	---------------------------------------------------------------------------------
	local class 			= NEAR_SB.skilldata.class_skill
	local weapon 			= NEAR_SB.skilldata.weapon
	local armor 			= NEAR_SB.skilldata.armor
	local world 			= NEAR_SB.skilldata.world
	local guild 			= NEAR_SB.skilldata.guild
	local ava 				= NEAR_SB.skilldata.ava
	---------------------------------------------------------------------------------
	-- local recast_class		= NEAR_SB.recastHandler.class_skill
	-- local recast_weapon		= NEAR_SB.recastHandler.weapon
	-- local recast_armor		= NEAR_SB.recastHandler.armor
	-- local recast_world		= NEAR_SB.recastHandler.world
	-- local recast_guild		= NEAR_SB.recastHandler.guild
	-- local recast_ava		= NEAR_SB.recastHandler.ava
	---------------------------------------------------------------------------------
	local sv_class			= sv.skilldata.class_skill
	local sv_weapon			= sv.skilldata.weapon
	local sv_armor 			= sv.skilldata.armor
	local sv_world 			= sv.skilldata.world
	local sv_guild			= sv.skilldata.guild
	local sv_ava			= sv.skilldata.ava
	---------------------------------------------------------------------------------

	--[[ Debug ]] if sv.debug then d(dbg.open) d(dbg.lightGrey .. 'start of addon.Initialize') end

	---------------------------------------------------------------------------------
	-- CAST functions
	---------------------------------------------------------------------------------
	local cast ={}

	function cast.class(ability, morph)
		for k, v in pairs(class) do
			if sv_class[k][ability] ~= nil then
				--check if its blocking cast and not recast
				if sv_class[k][ability][morph].block and not sv_class[k][ability][morph].block_recast then
					-- register block
					LSB.RegisterSkillBlock(addon.name, v[ability][morph].id)
					-- send message if toggled
					if (sv.message and sv_class[k][ability][morph].msg) or sv.debug_init_cast then
						d(dbg.white .. str_reg..' '.. v[ability][morph].name) end
					sv_class[k][ability][morph].msg = false
				elseif not sv_class[k][ability][morph].block and not sv_class[k][ability][morph].block_recast then
					-- if not blocking either cast or recast unregister
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					-- send message if toggled
					if (sv.message and sv_class[k][ability][morph].msg) or sv.debug_init_cast then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name) end
					sv_class[k][ability][morph].msg = false
				end
			end
		end
	end

	function cast.weapon(ability, morph)
		for k, v in pairs(weapon) do
			if sv_weapon[k][ability] ~= nil then
				-- check if its destruction staff
				if (k == 5) and ((ability == 1) or (ability == 3) or (ability == 4) or (ability == 6)) then
					if sv_weapon[k][ability][morph].block and not sv_weapon[k][ability][morph].block_recast then
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id)
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id1) -- flame version
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id2) -- frost version
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id3) -- shock version
						if (sv.message and sv_weapon[k][ability][morph].msg) or sv.debug_init_cast then
							d(dbg.white .. str_reg..' '.. v[ability][morph].name) end
						sv_weapon[k][ability][morph].msg = false
					elseif not sv_weapon[k][ability][morph].block and not sv_weapon[k][ability][morph].block_recast then
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id1) -- flame version
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id2) -- frost version
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id3) -- shock version
						if (sv.message and sv_weapon[k][ability][morph].msg) or sv.debug_init_cast then
							d(dbg.white .. str_unreg..' '.. v[ability][morph].name) end
						sv_weapon[k][ability][morph].msg = false
					end
				else
					if sv_weapon[k][ability][morph].block and not sv_weapon[k][ability][morph].block_recast then
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id)
						if (sv.message and sv_weapon[k][ability][morph].msg) or sv.debug_init_cast then
							d(dbg.white .. str_reg..' '.. v[ability][morph].name) end
						sv_weapon[k][ability][morph].msg = false
					elseif not sv_weapon[k][ability][morph].block and not sv_weapon[k][ability][morph].block_recast then
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
						if (sv.message and sv_weapon[k][ability][morph].msg) or sv.debug_init_cast then
							d(dbg.white .. str_unreg..' '.. v[ability][morph].name) end
						sv_weapon[k][ability][morph].msg = false
					end
				end
			end
		end
	end

	function cast.armor(ability, morph)
		for k, v in pairs(armor) do
			if sv_armor[k][ability] ~= nil then
				if sv_armor[k][ability][morph].block and not sv_armor[k][ability][morph].block_recast then
					LSB.RegisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_armor[k][ability][morph].msg) or sv.debug_init_cast then
						d(dbg.white .. str_reg..' '.. v[ability][morph].name) end
					sv_armor[k][ability][morph].msg = false
				elseif not sv_armor[k][ability][morph].block and not sv_armor[k][ability][morph].block_recast then
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_armor[k][ability][morph].msg) or sv.debug_init_cast then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name) end
					sv_armor[k][ability][morph].msg = false
				end
			end
		end
	end

	function cast.world(ability, morph)
		for k, v in pairs(world) do
			if sv_world[k][ability] ~= nil then
				if sv_world[k][ability][morph].block and not sv_world[k][ability][morph].block_recast then
					LSB.RegisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_world[k][ability][morph].msg) or sv.debug_init_cast then
						d(dbg.white .. str_reg..' '.. v[ability][morph].name) end
					sv_world[k][ability][morph].msg = false
				elseif not sv_world[k][ability][morph].block and not sv_world[k][ability][morph].block_recast then
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_world[k][ability][morph].msg) or sv.debug_init_cast then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name) end
					sv_world[k][ability][morph].msg = false
				end
			end
		end
	end

	function cast.guild(ability, morph)
		for k, v in pairs(guild) do
			if sv_guild[k][ability] ~= nil then
				if sv_guild[k][ability][morph].block and not sv_guild[k][ability][morph].block_recast then
					LSB.RegisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_guild[k][ability][morph].msg) or sv.debug_init_cast then
						d(dbg.white .. str_reg..' '.. v[ability][morph].name) end
					sv_guild[k][ability][morph].msg = false
				elseif not sv_guild[k][ability][morph].block and not sv_guild[k][ability][morph].block_recast then
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_guild[k][ability][morph].msg) or sv.debug_init_cast then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name) end
					sv_guild[k][ability][morph].msg = false
				end
			end
		end
	end

	function cast.ava(ability, morph)
		for k, v in pairs(ava) do
			if sv_ava[k][ability] ~= nil then
				if sv_ava[k][ability][morph].block and not sv_ava[k][ability][morph].block_recast then
					LSB.RegisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_ava[k][ability][morph].msg) or sv.debug_init_cast then
						d(dbg.white .. str_reg..' '.. v[ability][morph].name) end
					sv_ava[k][ability][morph].msg = false
				elseif not sv_ava[k][ability][morph].block and not sv_ava[k][ability][morph].block_recast then
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_ava[k][ability][morph].msg) or sv.debug_init_cast then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name) end
					sv_ava[k][ability][morph].msg = false
				end
			end
		end
	end

	----------------------------------------
	-- Class
	----------------------------------------
	-- Ability 1
	--------------------
	cast.class(1, 0)
	cast.class(1, 1)
	cast.class(1, 2)
	-- Ability 2
	--------------------
	cast.class(2, 0)
	cast.class(2, 1)
	cast.class(2, 2)
	-- Ability 3
	--------------------
	cast.class(3, 0)
	cast.class(3, 1)
	cast.class(3, 2)
	-- Ability 4
	--------------------
	cast.class(4, 0)
	cast.class(4, 1)
	cast.class(4, 2)
	-- Ability 5
	--------------------
	cast.class(5, 0)
	cast.class(5, 1)
	cast.class(5, 2)
	-- Ability 6
	--------------------
	cast.class(6, 0)
	cast.class(6, 1)
	cast.class(6, 2)
	----------------------------------------
	-- Weapon
	----------------------------------------
	-- Ability 1
	--------------------
	cast.weapon(1, 0)
	cast.weapon(1, 1)
	cast.weapon(1, 2)
	-- Ability 2
	--------------------
	cast.weapon(2, 0)
	cast.weapon(2, 1)
	cast.weapon(2, 2)
	-- Ability 3
	--------------------
	cast.weapon(3, 0)
	cast.weapon(3, 1)
	cast.weapon(3, 2)
	-- Ability 4
	--------------------
	cast.weapon(4, 0)
	cast.weapon(4, 1)
	cast.weapon(4, 2)
	-- Ability 5
	--------------------
	cast.weapon(5, 0)
	cast.weapon(5, 1)
	cast.weapon(5, 2)
	-- Ability 6
	--------------------
	cast.weapon(6, 0)
	cast.weapon(6, 1)
	cast.weapon(6, 2)
	----------------------------------------
	-- Armor
	----------------------------------------
	-- Ability 1
	--------------------
	cast.armor(1, 0)
	cast.armor(1, 1)
	cast.armor(1, 2)
	----------------------------------------
	-- World
	----------------------------------------
	-- Ability 1
	--------------------
	cast.world(1, 0)
	cast.world(1, 1)
	cast.world(1, 2)
	-- Ability 2
	--------------------
	cast.world(2, 0)
	cast.world(2, 1)
	cast.world(2, 2)
	-- Ability 3
	--------------------
	cast.world(3, 0)
	cast.world(3, 1)
	cast.world(3, 2)
	-- Ability 4
	--------------------
	cast.world(4, 0)
	cast.world(4, 1)
	cast.world(4, 2)
	-- Ability 5
	--------------------
	cast.world(5, 0)
	cast.world(5, 1)
	cast.world(5, 2)
	-- Ability 6
	--------------------
	cast.world(6, 0)
	cast.world(6, 1)
	cast.world(6, 2)

	----------------------------------------
	-- Guild
	----------------------------------------
	-- Ability 1
	--------------------
	cast.guild(1, 0)
	cast.guild(1, 1)
	cast.guild(1, 2)
	-- Ability 2
	--------------------
	cast.guild(2, 0)
	cast.guild(2, 1)
	cast.guild(2, 2)
	-- Ability 3
	--------------------
	cast.guild(3, 0)
	cast.guild(3, 1)
	cast.guild(3, 2)
	-- Ability 4
	--------------------
	cast.guild(4, 0)
	cast.guild(4, 1)
	cast.guild(4, 2)
	-- Ability 5
	--------------------
	cast.guild(5, 0)
	cast.guild(5, 1)
	cast.guild(5, 2)
	-- Ability 6
	--------------------
	cast.guild(6, 0)
	cast.guild(6, 1)
	cast.guild(6, 2)
	----------------------------------------
	-- AvA
	----------------------------------------
	-- Ability 1
	--------------------
	cast.ava(1, 0)
	cast.ava(1, 1)
	cast.ava(1, 2)
	-- Ability 2
	--------------------
	cast.ava(2, 0)
	cast.ava(2, 1)
	cast.ava(2, 2)
	-- Ability 3
	--------------------
	cast.ava(3, 0)
	cast.ava(3, 1)
	cast.ava(3, 2)
	-- Ability 4
	--------------------
	cast.ava(4, 0)
	cast.ava(4, 1)
	cast.ava(4, 2)
	-- Ability 5
	--------------------
	cast.ava(5, 0)
	cast.ava(5, 1)
	cast.ava(5, 2)

	---------------------------------------------------------------------------------
	-- RECAST functions
	---------------------------------------------------------------------------------
	local recast = {}

	function recast.class(ability, morph)
		local skillType = 'class_skill'
		for k, v in pairs(class) do
			if sv_class[k][ability] ~= nil then
				--check if its blocking recast
				if sv_class[k][ability][morph].block_recast then
					-- register with a custom handler to decide when it should block or not
					LSB.RegisterSkillBlock(addon.name, v[ability][morph].id, function () return addon.BlockRecasts(skillType, k, ability, morph) end)
					-- send message if toggled
					if (sv.message and sv_class[k][ability][morph].msg) or sv.debug_init_recast then
						d(dbg.white .. str_reg..' '.. v[ability][morph].name ..' recast') end
					sv_class[k][ability][morph].msg = false
				elseif not sv_class[k][ability][morph].block_recast and not sv_class[k][ability][morph].block then
					-- if not blocking either cast or recast unregister
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					-- send message if toggled
					if (sv.message and sv_class[k][ability][morph].msg) or sv.debug_init_recast then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' recast') end
					sv_class[k][ability][morph].msg = false
				end
			end
		end
	end

	function recast.weapon(ability, morph)
		local skillType = 'weapon'
		for k, v in pairs(weapon) do
			if sv_weapon[k][ability] ~= nil then
				-- check if its destruction staff
				if (k == 5) and ((ability == 1) or (ability == 3) or (ability == 4) or (ability == 6)) then
					if sv_weapon[k][ability][morph].block_recast then
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id,  function () return addon.BlockRecasts(skillType, k, ability, morph) end)
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id1, function () return addon.BlockRecasts(skillType, k, ability, morph) end) -- flame version
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id2, function () return addon.BlockRecasts(skillType, k, ability, morph) end) -- frost version
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id3, function () return addon.BlockRecasts(skillType, k, ability, morph) end) -- shock version
						if (sv.message and sv_weapon[k][ability][morph].msg) or sv.debug_init_recast then
							d(dbg.white .. str_reg..' '.. v[ability][morph].name ..' recast') end
						sv_weapon[k][ability][morph].msg = false
					elseif not sv_weapon[k][ability][morph].block_recast and not sv_weapon[k][ability][morph].block then
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id1) -- flame version
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id2) -- frost version
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id3) -- shock version
						if (sv.message and sv_weapon[k][ability][morph].msg) or sv.debug_init_recast then
							d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' recast') end
						sv_weapon[k][ability][morph].msg = false
					end
				else
					if sv_weapon[k][ability][morph].block_recast then
						LSB.RegisterSkillBlock(addon.name, v[ability][morph].id, function () return addon.BlockRecasts(skillType, k, ability, morph) end)
						if (sv.message and sv_weapon[k][ability][morph].msg) or sv.debug_init_recast then
							d(dbg.white .. str_reg..' '.. v[ability][morph].name ..' recast') end
						sv_weapon[k][ability][morph].msg = false
					elseif not sv_weapon[k][ability][morph].block_recast and not sv_weapon[k][ability][morph].block then
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
						if (sv.message and sv_weapon[k][ability][morph].msg) or sv.debug_init_recast then
							d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' recast') end
						sv_weapon[k][ability][morph].msg = false
					end
				end
			end
		end
	end

	function recast.armor(ability, morph)
		local skillType = 'armor'
		for k, v in pairs(armor) do
			if sv_armor[k][ability] ~= nil then
				if sv_armor[k][ability][morph].block_recast then
					LSB.RegisterSkillBlock(addon.name, v[ability][morph].id, function () return addon.BlockRecasts(skillType, k, ability, morph) end)
					if (sv.message and sv_armor[k][ability][morph].msg) or sv.debug_init_recast then
						d(dbg.white .. str_reg..' '.. v[ability][morph].name ..' recast') end
					sv_armor[k][ability][morph].msg = false
				elseif not sv_armor[k][ability][morph].block_recast and not sv_armor[k][ability][morph].block then
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_armor[k][ability][morph].msg) or sv.debug_init_recast then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' recast') end
					sv_armor[k][ability][morph].msg = false
				end
			end
		end
	end

	function recast.world(ability, morph)
		local skillType = 'world'
		for k, v in pairs(world) do
			if sv_world[k][ability] ~= nil then
				if sv_world[k][ability][morph].block_recast then
					LSB.RegisterSkillBlock(addon.name, v[ability][morph].id, function () return addon.BlockRecasts(skillType, k, ability, morph) end)
					if (sv.message and sv_world[k][ability][morph].msg) or sv.debug_init_recast then
						d(dbg.white .. str_reg..' '.. v[ability][morph].name ..' recast') end
					sv_world[k][ability][morph].msg = false
				elseif not sv_world[k][ability][morph].block_recast and not sv_world[k][ability][morph].block then
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_world[k][ability][morph].msg) or sv.debug_init_recast then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' recast') end
					sv_world[k][ability][morph].msg = false
				end
			end
		end
	end

	function recast.guild(ability, morph)
		local skillType = 'guild'
		for k, v in pairs(guild) do
			if sv_guild[k][ability] ~= nil then
				if sv_guild[k][ability][morph].block_recast then
					LSB.RegisterSkillBlock(addon.name, v[ability][morph].id, function () return addon.BlockRecasts(skillType, k, ability, morph) end)
					if (sv.message and sv_guild[k][ability][morph].msg) or sv.debug_init_recast then
						d(dbg.white .. str_reg..' '.. v[ability][morph].name ..' recast') end
					sv_guild[k][ability][morph].msg = false
				elseif not sv_guild[k][ability][morph].block_recast and not sv_guild[k][ability][morph].block then
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_guild[k][ability][morph].msg) or sv.debug_init_recast then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' recast') end
					sv_guild[k][ability][morph].msg = false
				end
			end
		end
	end

	function recast.ava(ability, morph)
		local skillType = 'ava'
		for k, v in pairs(ava) do
			if sv_ava[k][ability] ~= nil then
				if sv_ava[k][ability][morph].block_recast then
					LSB.RegisterSkillBlock(addon.name, v[ability][morph].id, function () return addon.BlockRecasts(skillType, k, ability, morph) end)
					if (sv.message and sv_ava[k][ability][morph].msg) or sv.debug_init_recast then
						d(dbg.white .. str_reg..' '.. v[ability][morph].name ..' recast') end
					sv_ava[k][ability][morph].msg = false
				elseif not sv_ava[k][ability][morph].block_recast and not sv_ava[k][ability][morph].block then
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_ava[k][ability][morph].msg) or sv.debug_init_recast then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' recast') end
					sv_ava[k][ability][morph].msg = false
				end
			end
		end
	end

	----------------------------------------
	-- Class
	----------------------------------------
	-- Ability 1
	--------------------
	recast.class(1, 0)
	recast.class(1, 1)
	recast.class(1, 2)
	-- Ability 2
	--------------------
	recast.class(2, 0)
	recast.class(2, 1)
	recast.class(2, 2)
	-- Ability 3
	--------------------
	recast.class(3, 0)
	recast.class(3, 1)
	recast.class(3, 2)
	-- Ability 4
	--------------------
	recast.class(4, 0)
	recast.class(4, 1)
	recast.class(4, 2)
	-- Ability 5
	--------------------
	recast.class(5, 0)
	recast.class(5, 1)
	recast.class(5, 2)
	-- Ability 6
	--------------------
	recast.class(6, 0)
	recast.class(6, 1)
	recast.class(6, 2)
	----------------------------------------
	-- Weapon
	----------------------------------------
	-- Ability 1
	--------------------
	recast.weapon(1, 0)
	recast.weapon(1, 1)
	recast.weapon(1, 2)
	-- Ability 2
	--------------------
	recast.weapon(2, 0)
	recast.weapon(2, 1)
	recast.weapon(2, 2)
	-- Ability 3
	--------------------
	recast.weapon(3, 0)
	recast.weapon(3, 1)
	recast.weapon(3, 2)
	-- Ability 4
	--------------------
	recast.weapon(4, 0)
	recast.weapon(4, 1)
	recast.weapon(4, 2)
	-- Ability 5
	--------------------
	recast.weapon(5, 0)
	recast.weapon(5, 1)
	recast.weapon(5, 2)
	-- Ability 6
	--------------------
	recast.weapon(6, 0)
	recast.weapon(6, 1)
	recast.weapon(6, 2)
	----------------------------------------
	-- Armor
	----------------------------------------
	-- Ability 1
	--------------------
	recast.armor(1, 0)
	recast.armor(1, 1)
	recast.armor(1, 2)
	----------------------------------------
	-- World
	----------------------------------------
	-- Ability 1
	--------------------
	recast.world(1, 0)
	recast.world(1, 1)
	recast.world(1, 2)
	-- Ability 2
	--------------------
	recast.world(2, 0)
	recast.world(2, 1)
	recast.world(2, 2)
	-- Ability 3
	--------------------
	recast.world(3, 0)
	recast.world(3, 1)
	recast.world(3, 2)
	-- Ability 4
	--------------------
	recast.world(4, 0)
	recast.world(4, 1)
	recast.world(4, 2)
	-- Ability 5
	--------------------
	recast.world(5, 0)
	recast.world(5, 1)
	recast.world(5, 2)
	-- Ability 6
	--------------------
	recast.world(6, 0)
	recast.world(6, 1)
	recast.world(6, 2)
	----------------------------------------
	-- Guild
	----------------------------------------
	-- Ability 1
	--------------------
	recast.guild(1, 0)
	recast.guild(1, 1)
	recast.guild(1, 2)
	-- Ability 2
	--------------------
	recast.guild(2, 0)
	recast.guild(2, 1)
	recast.guild(2, 2)
	-- Ability 3
	--------------------
	recast.guild(3, 0)
	recast.guild(3, 1)
	recast.guild(3, 2)
	-- Ability 4
	--------------------
	recast.guild(4, 0)
	recast.guild(4, 1)
	recast.guild(4, 2)
	-- Ability 5
	--------------------
	recast.guild(5, 0)
	recast.guild(5, 1)
	recast.guild(5, 2)
	-- Ability 6
	--------------------
	recast.guild(6, 0)
	recast.guild(6, 1)
	recast.guild(6, 2)
	----------------------------------------
	-- AvA
	----------------------------------------
	-- Ability 1
	--------------------
	recast.ava(1, 0)
	recast.ava(1, 1)
	recast.ava(1, 2)
	-- Ability 2
	--------------------
	recast.ava(2, 0)
	recast.ava(2, 1)
	recast.ava(2, 2)
	-- Ability 3
	--------------------
	recast.ava(3, 0)
	recast.ava(3, 1)
	recast.ava(3, 2)
	-- Ability 4
	--------------------
	recast.ava(4, 0)
	recast.ava(4, 1)
	recast.ava(4, 2)
	-- Ability 5
	--------------------
	recast.ava(5, 0)
	recast.ava(5, 1)
	recast.ava(5, 2)

	---------------------------------------------------------------------------------
	-- PvP functions
	---------------------------------------------------------------------------------
	local pvp = {}

	function pvp.class(ability, morph)
		for k, v in pairs(class) do
			if sv_class[k][ability] ~= nil then
				-- check if its blocking the skill while on pvp zones, and is on pvp zone, and is not blocking everything on pvp
				if not sv_class[k][ability][morph].pvp and isInPvP and not sv.blockPvP then
					-- if not blocking on pvp unregister
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					-- send message if toggled
					if (sv.message and sv_class[k][ability][morph].msg) or sv.debug_init_pvp then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' *PvP') end
					sv_class[k][ability][morph].msg = false
				end
			end
		end
	end

	function pvp.weapon(ability, morph)
		for k, v in pairs(weapon) do
			if sv_weapon[k][ability] ~= nil then
				-- check if its destruction staff
				if (k == 5) and ((ability == 1) or (ability == 3) or (ability == 4) or (ability == 6)) then
					if not sv_weapon[k][ability][morph].pvp and isInPvP and not sv.blockPvP then
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id1) -- flame version
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id2) -- frost version
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id3) -- shock version
						if (sv.message and sv_weapon[k][ability][morph].msg) or sv.debug_init_pvp then
							d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' *PvP') end
						sv_weapon[k][ability][morph].msg = false
					end
				else
					if not sv_weapon[k][ability][morph].pvp and isInPvP and not sv.blockPvP then
						LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
						if (sv.message and sv_weapon[k][ability][morph].msg) or sv.debug_init_pvp then
							d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' *PvP') end
						sv_weapon[k][ability][morph].msg = false
					end
				end
			end
		end
	end

	function pvp.armor(ability, morph)
		for k, v in pairs(armor) do
			if sv_armor[k][ability] ~= nil then
				if not sv_armor[k][ability][morph].pvp and isInPvP and not sv.blockPvP then
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_armor[k][ability][morph].msg) or sv.debug_init_pvp then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' *PvP') end
					sv_armor[k][ability][morph].msg = false
				end
			end
		end
	end

	function pvp.world(ability, morph)
		for k, v in pairs(world) do
			if sv_world[k][ability] ~= nil then
				if not sv_world[k][ability][morph].pvp and isInPvP and not sv.blockPvP then
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_world[k][ability][morph].msg) or sv.debug_init_pvp then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' *PvP') end
					sv_world[k][ability][morph].msg = false
				end
			end
		end
	end

	function pvp.guild(ability, morph)
		for k, v in pairs(guild) do
			if sv_guild[k][ability] ~= nil then
				if not sv_guild[k][ability][morph].pvp and isInPvP and not sv.blockPvP then
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_guild[k][ability][morph].msg) or sv.debug_init_pvp then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' *PvP') end
					sv_guild[k][ability][morph].msg = false
				end
			end
		end
	end

	function pvp.ava(ability, morph)
		for k, v in pairs(ava) do
			if sv_ava[k][ability] ~= nil then
				if not sv_ava[k][ability][morph].pvp and isInPvP and not sv.blockPvP then
					LSB.UnregisterSkillBlock(addon.name, v[ability][morph].id)
					if (sv.message and sv_ava[k][ability][morph].msg) or sv.debug_init_pvp then
						d(dbg.white .. str_unreg..' '.. v[ability][morph].name ..' *PvP') end
					sv_ava[k][ability][morph].msg = false
				end
			end
		end
	end

	----------------------------------------
	-- Class
	----------------------------------------
	-- Ability 1
	--------------------
	pvp.class(1, 0)
	pvp.class(1, 1)
	pvp.class(1, 2)
	-- Ability 2
	--------------------
	pvp.class(2, 0)
	pvp.class(2, 1)
	pvp.class(2, 2)
	-- Ability 3
	--------------------
	pvp.class(3, 0)
	pvp.class(3, 1)
	pvp.class(3, 2)
	-- Ability 4
	--------------------
	pvp.class(4, 0)
	pvp.class(4, 1)
	pvp.class(4, 2)
	-- Ability 5
	--------------------
	pvp.class(5, 0)
	pvp.class(5, 1)
	pvp.class(5, 2)
	-- Ability 6
	--------------------
	pvp.class(6, 0)
	pvp.class(6, 1)
	pvp.class(6, 2)
	----------------------------------------
	-- Weapon
	----------------------------------------
	-- Ability 1
	--------------------
	pvp.weapon(1, 0)
	pvp.weapon(1, 1)
	pvp.weapon(1, 2)
	-- Ability 2
	--------------------
	pvp.weapon(2, 0)
	pvp.weapon(2, 1)
	pvp.weapon(2, 2)
	-- Ability 3
	--------------------
	pvp.weapon(3, 0)
	pvp.weapon(3, 1)
	pvp.weapon(3, 2)
	-- Ability 4
	--------------------
	pvp.weapon(4, 0)
	pvp.weapon(4, 1)
	pvp.weapon(4, 2)
	-- Ability 5
	--------------------
	pvp.weapon(5, 0)
	pvp.weapon(5, 1)
	pvp.weapon(5, 2)
	-- Ability 6
	--------------------
	pvp.weapon(6, 0)
	pvp.weapon(6, 1)
	pvp.weapon(6, 2)
	----------------------------------------
	-- Armor
	----------------------------------------
	-- Ability 1
	--------------------
	pvp.armor(1, 0)
	pvp.armor(1, 1)
	pvp.armor(1, 2)
	----------------------------------------
	-- World
	----------------------------------------
	-- Ability 1
	--------------------
	pvp.world(1, 0)
	pvp.world(1, 1)
	pvp.world(1, 2)
	-- Ability 2
	--------------------
	pvp.world(2, 0)
	pvp.world(2, 1)
	pvp.world(2, 2)
	-- Ability 3
	--------------------
	pvp.world(3, 0)
	pvp.world(3, 1)
	pvp.world(3, 2)
	-- Ability 4
	--------------------
	pvp.world(4, 0)
	pvp.world(4, 1)
	pvp.world(4, 2)
	-- Ability 5
	--------------------
	pvp.world(5, 0)
	pvp.world(5, 1)
	pvp.world(5, 2)
	-- Ability 6
	--------------------
	pvp.world(6, 0)
	pvp.world(6, 1)
	pvp.world(6, 2)
	----------------------------------------
	-- Guild
	----------------------------------------
	-- Ability 1
	--------------------
	pvp.guild(1, 0)
	pvp.guild(1, 1)
	pvp.guild(1, 2)
	-- Ability 2
	--------------------
	pvp.guild(2, 0)
	pvp.guild(2, 1)
	pvp.guild(2, 2)
	-- Ability 3
	--------------------
	pvp.guild(3, 0)
	pvp.guild(3, 1)
	pvp.guild(3, 2)
	-- Ability 4
	--------------------
	pvp.guild(4, 0)
	pvp.guild(4, 1)
	pvp.guild(4, 2)
	-- Ability 5
	--------------------
	pvp.guild(5, 0)
	pvp.guild(5, 1)
	pvp.guild(5, 2)
	-- Ability 6
	--------------------
	pvp.guild(6, 0)
	pvp.guild(6, 1)
	pvp.guild(6, 2)
	----------------------------------------
	-- AvA
	----------------------------------------
	-- Ability 1
	--------------------
	pvp.ava(1, 0)
	pvp.ava(1, 1)
	pvp.ava(1, 2)
	-- Ability 2
	--------------------
	pvp.ava(2, 0)
	pvp.ava(2, 1)
	pvp.ava(2, 2)
	-- Ability 3
	--------------------
	pvp.ava(3, 0)
	pvp.ava(3, 1)
	pvp.ava(3, 2)
	-- Ability 4
	--------------------
	pvp.ava(4, 0)
	pvp.ava(4, 1)
	pvp.ava(4, 2)
	-- Ability 5
	--------------------
	pvp.ava(5, 0)
	pvp.ava(5, 1)
	pvp.ava(5, 2)

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
