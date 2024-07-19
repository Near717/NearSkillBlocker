local addon = NEAR_SB
local skilldata = NEAR_SB.skilldata
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

---@param skillType string
---@param skillLine string|integer
---@param ability integer
---@param morph integer
---@param abilityId integer
---@param block_notInCombat boolean
---@param block_inCombat boolean
---@param block_isBracing boolean
---@return boolean
function NEAR_SB.BlockRecasts(skillType, skillLine, ability, morph, abilityId, block_notInCombat, block_inCombat, block_isBracing)
	local sv = NEAR_SB.ASV

	local recastHandler = false

	if block_notInCombat or block_inCombat then
		local unitTag = 'player'
		local isInCombat = IsUnitInCombat(unitTag)
		if (block_notInCombat and not isInCombat) or (block_inCombat and isInCombat) then
			recastHandler = true
		end
	end

	if recastHandler == false and block_isBracing then
		if IsBlockActive() then
			recastHandler = true
		end
	end

	if recastHandler == false then
		local function UpdateRecastHandler(slotNum)
			local timeRemainingMS = GetActionSlotEffectTimeRemaining(slotNum)
			local thresholdMS = sv.recastTimeRemainingThreshold * 1000
			recastHandler = timeRemainingMS > thresholdMS
		end

		for slotNum = 3, 8 do
			if abilityId == GetSlotBoundId(slotNum) then
				UpdateRecastHandler(slotNum)
				break
			end
		end
	end

	-- check status of blockPvP and overrides the handler if needed
	if recastHandler == true then
		if NEAR_SB.BlockPvP(skillType, skillLine, ability, morph) == false then
			recastHandler = false
		end
	end

	return recastHandler
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


---@param skillType string
---@param skillLine string|integer
---@param ability integer
---@param morph integer
---@return boolean
function NEAR_SB.BlockPvP(skillType, skillLine, ability, morph)
	local sv = NEAR_SB.ASV
	local sv_skilldata = sv.skilldata[skillType]

	local str_unreg = GetString(NEARSB_unregistered)

	local block = true

	-- check if its not blocking the skill in pvp zones and not blocking everything in pvp
	if not sv_skilldata[skillLine][ability][morph].pvp and not sv.blockPvP then
		local abilityName = skilldata[skillType][skillLine][ability][morph].name

		-- check if player is in a pvp zone
		if IsPlayerInAvAWorld() or IsActiveWorldBattleground() then
			block = false -- tell libsb to not block

			-- send this only the first time after entering pvp zone
			if sv.message and sv_skilldata[skillLine][ability][morph].msg.pvp then
				local message = str_unreg .. abilityName .. ' *PvP'
				addon.AddMessage(message)
				sv_skilldata[skillLine][ability][morph].msg.pvp = false
			end
		else
			block = true -- tell libsb to block

			-- set the PvP message to true
			if sv_skilldata[skillLine][ability][morph].msg.pvp ~= true then
				sv_skilldata[skillLine][ability][morph].msg.pvp = true
			end
		end
	end

	return block
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


---@param skillType string
---@param skillLine string|integer
---@param ability integer
---@param morph integer
---@param block_notInCombat boolean
---@param block_inCombat boolean
---@param block_isBracing boolean
---@return boolean
function NEAR_SB.BlockIsInCombatOrBracing(skillType, skillLine, ability, morph, block_notInCombat, block_inCombat, block_isBracing)
	local blockHandler = false

	if block_notInCombat or block_inCombat then
		local unitTag = 'player'
		local isInCombat = IsUnitInCombat(unitTag)
		if (block_notInCombat and not isInCombat) or (block_inCombat and isInCombat) then
			blockHandler = true
		end
	end

	if blockHandler == false and block_isBracing then
		if IsBlockActive() then
			blockHandler = true
		end
	end

	-- check status of blockPvP and overrides the handler if needed
	if blockHandler == true then
		if NEAR_SB.BlockPvP(skillType, skillLine, ability, morph) == false then
			blockHandler = false
		end
	end

	return blockHandler
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


---@param skillType string
---@param skillLine string|integer
---@param ability integer
---@param morph integer
---@param blockType integer
---@param block_notInCombat boolean
---@param block_inCombat boolean
---@param block_isBracing boolean
---@return boolean
function NEAR_SB.BlockOnCrux(skillType, skillLine, ability, morph, blockType, block_notInCombat, block_inCombat, block_isBracing)
	local blockHandler = false
	local unitTag = 'player'

	if block_notInCombat or block_inCombat then
		local isInCombat = IsUnitInCombat(unitTag)
		if (block_notInCombat and not isInCombat) or (block_inCombat and isInCombat) then
			blockHandler = true
		end
	end

	if blockHandler == false and block_isBracing then
		if IsBlockActive() then
			blockHandler = true
		end
	end

	local buffExists = false

	if blockHandler == false then
		for buffIndex = 1, GetNumBuffs(unitTag) do
			local _, _, _, _, stackCount, _, _, _, _, _, buffAbilityId, _, _ = GetUnitBuffInfo(unitTag, buffIndex)
			if buffAbilityId == 184220 then -- Crux abilityId = 184220
				buffExists = true
				if (blockType == 4 and stackCount == 3) or (blockType == 5 and not (stackCount == 3)) then
					blockHandler = true
				end
				break
			end
		end

		if blockType == 5 and not buffExists then
			blockHandler = true
		end
	end

	-- check status of blockPvP and overrides the handler if needed
	if blockHandler == true then
		if NEAR_SB.BlockPvP(skillType, skillLine, ability, morph) == false then
			blockHandler = false
		end
	end

	return blockHandler
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

local stackAbilityIds = {
	['24165'] = 203447, -- Bound Armaments
	['117624'] = 117625, -- Venom Skull
	['123699'] = 117625, -- Venom Skull
	['123704'] = 117625, -- Venom Skull
}

---@param skillType string
---@param skillLine string|integer
---@param ability integer
---@param morph integer
---@param abilityId integer
---@param block_notInCombat boolean
---@param block_inCombat boolean
---@param block_isBracing boolean
---@return boolean
function NEAR_SB.BlockOnStacks(skillType, skillLine, ability, morph, abilityId, block_notInCombat, block_inCombat, block_isBracing)
	local sv_skilldata = NEAR_SB.ASV.skilldata[skillType]

	local blockHandler = false
	local unitTag = 'player'

	if block_notInCombat or block_inCombat then
		local isInCombat = IsUnitInCombat(unitTag)
		if (block_notInCombat and not isInCombat) or (block_inCombat and isInCombat) then
			blockHandler = true
		end
	end

	if blockHandler == false and block_isBracing then
		if IsBlockActive() then
			blockHandler = true
		end
	end

	local stacks = sv_skilldata[skillLine][ability][morph].stacks
	local stackAbilityId = stackAbilityIds[tostring(abilityId)]

	local buffExists = false

	if blockHandler == false then
		for buffIndex = 1, GetNumBuffs(unitTag) do
			local _, _, _, _, stackCount, _, _, _, _, _, buffAbilityId, _, _ = GetUnitBuffInfo(unitTag, buffIndex)
			if (buffAbilityId == stackAbilityId) then
				buffExists = true
				if not (stackCount == stacks) then
					blockHandler = true
				end
				break
			end
		end
	end

	if not buffExists then -- for Venom Skull, Bound Armaments can't be used anyways if theres no buff
		blockHandler = true
	end

	-- check status of blockPvP and overrides the handler if needed
	if blockHandler == true then
		if NEAR_SB.BlockPvP(skillType, skillLine, ability, morph) == false then
			blockHandler = false
		end
	end

	return blockHandler
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------


---@param skillType string
---@param skillLine string|integer
---@param ability integer
---@param morph integer
---@param abilityId integer|nil
---@param blockType integer
---@param block_notInCombat boolean
---@param block_inCombat boolean
---@param block_isBracing boolean
---@return boolean
function NEAR_SB.suppressCheck(skillType, skillLine, ability, morph, abilityId, blockType, block_notInCombat, block_inCombat, block_isBracing)
	local sv = NEAR_SB.ASV

	local block = false

	if not sv.suppressBlock then
		if blockType == 1 then
			block = NEAR_SB.BlockPvP(skillType, skillLine, ability, morph) -- for cast blocks check only pvp since it is already skipped if block_notInCombat is true
		elseif blockType == 2 then
			block = NEAR_SB.BlockRecasts(skillType, skillLine, ability, morph, abilityId, block_notInCombat, block_inCombat, block_isBracing)
		elseif blockType == 3 then
			block = NEAR_SB.BlockIsInCombatOrBracing(skillType, skillLine, ability, morph, block_notInCombat, block_inCombat, block_isBracing)
		elseif blockType == 4 or blockType == 5 then
			block = NEAR_SB.BlockOnCrux(skillType, skillLine, ability, morph, blockType, block_notInCombat, block_inCombat, block_isBracing)
		elseif blockType == 6 then
			block = NEAR_SB.BlockOnStacks(skillType, skillLine, ability, morph, abilityId, block_notInCombat, block_inCombat, block_isBracing)
		end
	end

	return block
end
