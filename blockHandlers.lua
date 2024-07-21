local addon = NEAR_SB
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

---@param abilityId integer
---@param msg_pvp boolean
---@param block_pvp boolean
---@param block_notInCombat boolean
---@param block_inCombat boolean
---@param block_isBracing boolean
---@return boolean
function NEAR_SB.HandleRecasts(abilityId, msg_pvp, block_pvp, block_notInCombat, block_inCombat, block_isBracing)
	local sv = NEAR_SB.ASV

	local recastHandler = false

	local unitTag = 'player'
	local isInCombat = IsUnitInCombat(unitTag)
	local isBracing = IsBlockActive()

	-- Check for in combat, out of combat, and bracing conditions
	if (block_notInCombat and not isInCombat and not block_isBracing) or
		(block_notInCombat and not isInCombat and block_isBracing and isBracing) or
		(block_inCombat and isInCombat and not block_isBracing) or
		(block_inCombat and isInCombat and block_isBracing and isBracing) or
		(block_isBracing and isBracing and not block_notInCombat and not block_inCombat) then
		recastHandler = true
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
		if NEAR_SB.HandlePvP(abilityId, msg_pvp, block_pvp) == false then
			recastHandler = false
		end
	end

	return recastHandler
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

---@param abilityId integer
---@param msg_pvp boolean
---@param block_pvp boolean
---@return boolean
function NEAR_SB.HandlePvP(abilityId, msg_pvp, block_pvp)
	local sv = NEAR_SB.ASV

	local str_unreg = GetString(NEARSB_unregistered)

	local block = true

	-- check if its not blocking the skill in pvp zones and not blocking everything in pvp
	if not block_pvp and not sv.blockPvP then
		local abilityName = GetAbilityName(abilityId)

		-- check if player is in a pvp zone
		if IsPlayerInAvAWorld() or IsActiveWorldBattleground() then
			block = false -- tell libsb to not block

			-- send this only the first time after entering pvp zone
			if sv.message and msg_pvp then
				local message = str_unreg .. abilityName .. ' *PvP'
				addon.AddMessage(message)
				msg_pvp = false
			end
		else
			block = true -- tell libsb to block

			-- set the PvP message to true
			if msg_pvp ~= true then
				msg_pvp = true
			end
		end
	end

	return block
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

---@param abilityId integer
---@param msg_pvp boolean
---@param block_pvp boolean
---@param block_notInCombat boolean
---@param block_inCombat boolean
---@param block_isBracing boolean
---@return boolean
function NEAR_SB.HandleCombatAndBracing(abilityId, msg_pvp, block_pvp, block_notInCombat, block_inCombat, block_isBracing)
	local blockHandler = false

	local unitTag = 'player'
	local isInCombat = IsUnitInCombat(unitTag)
	local isBracing = IsBlockActive()

	-- Check for in combat, out of combat, and bracing conditions
	if (block_notInCombat and not isInCombat and not block_isBracing) or
		(block_notInCombat and not isInCombat and block_isBracing and isBracing) or
		(block_inCombat and isInCombat and not block_isBracing) or
		(block_inCombat and isInCombat and block_isBracing and isBracing) or
		(block_isBracing and isBracing and not block_notInCombat and not block_inCombat) then
		blockHandler = true
	end

	-- check status of blockPvP and overrides the handler if needed
	if blockHandler == true then
		if NEAR_SB.HandlePvP(abilityId, msg_pvp, block_pvp) == false then
			blockHandler = false
		end
	end

	return blockHandler
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

---@param blockType integer
---@param abilityId integer
---@param msg_pvp boolean
---@param block_pvp boolean
---@param block_notInCombat boolean
---@param block_inCombat boolean
---@param block_isBracing boolean
---@return boolean
function NEAR_SB.HandleOnCrux(blockType, abilityId, msg_pvp, block_pvp, block_notInCombat, block_inCombat, block_isBracing)
	local blockHandler = false
	local unitTag = 'player'

	local isInCombat = IsUnitInCombat(unitTag)
	local isBracing = IsBlockActive()

	-- Check for in combat, out of combat, and bracing conditions
	if (block_notInCombat and not isInCombat and not block_isBracing) or
		(block_notInCombat and not isInCombat and block_isBracing and isBracing) or
		(block_inCombat and isInCombat and not block_isBracing) or
		(block_inCombat and isInCombat and block_isBracing and isBracing) or
		(block_isBracing and isBracing and not block_notInCombat and not block_inCombat) then
		blockHandler = true
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
		if NEAR_SB.HandlePvP(abilityId, msg_pvp, block_pvp) == false then
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
function NEAR_SB.HandleOnStacks(skillType, skillLine, ability, morph, abilityId, msg_pvp, block_pvp, block_notInCombat, block_inCombat, block_isBracing)
	local sv_skilldata = NEAR_SB.ASV.skilldata[skillType]

	local blockHandler = false
	local unitTag = 'player'

	local isInCombat = IsUnitInCombat(unitTag)
	local isBracing = IsBlockActive()

	-- Check for in combat, out of combat, and bracing conditions
	if (block_notInCombat and not isInCombat and not block_isBracing) or
		(block_notInCombat and not isInCombat and block_isBracing and isBracing) or
		(block_inCombat and isInCombat and not block_isBracing) or
		(block_inCombat and isInCombat and block_isBracing and isBracing) or
		(block_isBracing and isBracing and not block_notInCombat and not block_inCombat) then
		blockHandler = true
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
		if NEAR_SB.HandlePvP(abilityId, msg_pvp, block_pvp) == false then
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
function NEAR_SB.suppressCheck(blockType, skillType, skillLine, ability, morph, abilityId, msg_pvp, block_pvp, block_notInCombat, block_inCombat, block_isBracing)
	local sv = NEAR_SB.ASV

	local block = false

	if not sv.suppressBlock then
		if blockType == 1 then
			block = NEAR_SB.HandlePvP(abilityId, msg_pvp, block_pvp) -- for cast blocks check only pvp since it is already skipped if anything else is true
		elseif blockType == 2 then
			block = NEAR_SB.HandleCombatAndBracing(abilityId, msg_pvp, block_pvp, block_notInCombat, block_inCombat, block_isBracing)
		elseif blockType == 3 then
			block = NEAR_SB.HandleRecasts(abilityId, msg_pvp, block_pvp, block_notInCombat, block_inCombat, block_isBracing)
		elseif blockType == 4 or blockType == 5 then
			block = NEAR_SB.HandleOnCrux(blockType, abilityId, msg_pvp, block_pvp, block_notInCombat, block_inCombat, block_isBracing)
		elseif blockType == 6 then
			block = NEAR_SB.HandleOnStacks(skillType, skillLine, ability, morph, abilityId, msg_pvp, block_pvp, block_notInCombat, block_inCombat, block_isBracing)
		end
	end

	return block
end
