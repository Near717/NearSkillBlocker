local dbg = NEAR_SB.utils.dbg
local color = NEAR_SB.utils.color
local skilldata = NEAR_SB.skilldata
local sv = NEAR_SB.ASV
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

---@param skillType string
---@param skillLine string|integer
---@param ability integer
---@param morph integer
---@param abilityId integer
---@return boolean
function NEAR_SB.BlockRecasts(skillType, skillLine, ability, morph, abilityId)
    sv = sv or NEAR_SB.ASV

	--[[ Debug ]] if sv.debug_recast then d(dbg.open) d(dbg.lightGrey .. 'start of BlockRecasts') end

	--[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'skillType: '..skillType.. '     skillLine: '..skillLine.. '\n'..color.white..'          ability: '..ability.. '     morph: '..morph) end

    local abilityName = skilldata[skillType][skillLine][ability][morph].name
	--[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'abilityId: '..abilityId.. '     abilityName: '..abilityName) end

    local recastHandler = NEAR_SB.recastHandler[skillType][skillLine][ability][morph]

    local function UpdateRecastHandler(slotNum)
        local timeRemainingMS = GetActionSlotEffectTimeRemaining(slotNum)
        --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'timeRemainingMS = '..timeRemainingMS) end
        if timeRemainingMS > 0 then
            recastHandler = true
        else
            recastHandler = false
        end
    end

    if abilityId == GetSlotBoundId(3) then
        --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = 3') end
        UpdateRecastHandler(3)
    elseif abilityId == GetSlotBoundId(4) then
        --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = 4') end
        UpdateRecastHandler(4)
    elseif abilityId == GetSlotBoundId(5) then
        --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = 5') end
        UpdateRecastHandler(5)
    elseif abilityId == GetSlotBoundId(6) then
        --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = 6') end
        UpdateRecastHandler(6)
    elseif abilityId == GetSlotBoundId(7) then
        --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = 7') end
        UpdateRecastHandler(7)
    elseif abilityId == GetSlotBoundId(8) then
        --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = 8') end
        UpdateRecastHandler(8)
    else
        --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = couldn\'t define') end
        recastHandler = false
    end

	--[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'recastHandler = '.. tostring(recastHandler)) end

	--[[ Debug ]] if sv.debug_recast then d(dbg.grey.. 'end of BlockRecasts') d(dbg.close) end

    return recastHandler
end


-------------------------------------------------------------------------------------------------------------------------------------------------------------------


---@param skillType string
---@param skillLine string|integer
---@param ability integer
---@param morph integer
---@return boolean
function NEAR_SB.BlockPvP(skillType, skillLine, ability, morph)
    sv = sv or NEAR_SB.ASV
    local sv_skilldata = sv.skilldata[skillType]

    local str_reg = GetString(NEARSB_registered)
	local str_unreg = GetString(NEARSB_unregistered)

	--[[ Debug ]] if sv.debug_pvp then d(dbg.open) d(dbg.lightGrey .. 'start of BlockPvP') end

    local block

    -- check if its not blocking the skill while on pvp zones and is not blocking everything on pvp
	if not sv_skilldata[skillLine][ability][morph].pvp and not sv.blockPvP then

	    --[[ Debug ]] if sv.debug_pvp then d(dbg.white.. 'skillType: '..skillType.. '     skillLine: '..skillLine.. '\n'..color.white..'          ability: '..ability.. '     morph: '..morph) end

        local abilityId = skilldata[skillType][skillLine][ability][morph].id
        local abilityName = skilldata[skillType][skillLine][ability][morph].name
	    --[[ Debug ]] if sv.debug_pvp then d(dbg.white.. 'abilityId: '..abilityId.. '     abilityName: '..abilityName) end

        -- check if its on a pvp zone
		if IsPlayerInAvAWorld() or IsActiveWorldBattleground() then
			--[[ Debug ]] if sv.debug_pvp then d(dbg.white .. 'player is on pvp zone') end
            block = false -- tell libsb to not block

            -- send this only the first time after entering pvp zone
            if (sv.message and sv_skilldata[skillLine][ability][morph].msg.pvp) or sv.debug_pvp then
                d(dbg.white .. str_unreg .. ' ' .. abilityName .. ' *PvP')
                sv_skilldata[skillLine][ability][morph].msg.pvp = false
            end
		else
			--[[ Debug ]] if sv.debug_pvp then d(dbg.white .. 'player is NOT on pvp zone') end
            block = true -- tell libsb to block
            if sv_skilldata[skillLine][ability][morph].msg.pvp ~= true then sv_skilldata[skillLine][ability][morph].msg.pvp = true end
		end
	else
		block = true -- is blocking the skill or all on pvp, tell libsb to block
	end

	--[[ Debug ]] if sv.debug_pvp then d(dbg.white.. 'block = '.. tostring(block)) end

	--[[ Debug ]] if sv.debug_pvp then d(dbg.grey.. 'end of BlockPvP') d(dbg.close) end

    return block
end


-------------------------------------------------------------------------------------------------------------------------------------------------------------------


---@return boolean
function NEAR_SB.BlockOnMaxCrux()
    sv = sv or NEAR_SB.ASV

	--[[ Debug ]] if sv.debug_crux then d(dbg.open) d(dbg.lightGrey .. 'start of BlockOnMaxCrux') end

    local blockHandler = false

    local unitTag = 'player'
    for buffIndex = 1, GetNumBuffs(unitTag) do
        local _, _, _, _, stackCount, _, _, _, _, _, buffAbilityId, _, _ = GetUnitBuffInfo(unitTag, buffIndex)
        if buffAbilityId == 184220 and stackCount == 3 then -- Crux abilityId = 184220
            blockHandler = true
        end
    end

    --[[ Debug ]] if sv.debug_crux then d(dbg.white.. 'blockHandler = '.. tostring(blockHandler)) end

	--[[ Debug ]] if sv.debug_crux then d(dbg.grey.. 'end of BlockOnMaxCrux') d(dbg.close) end

    return blockHandler
end


-------------------------------------------------------------------------------------------------------------------------------------------------------------------


---@param skillType string
---@param skillLine string|integer
---@param ability integer
---@param morph integer
---@param abilityId integer|nil
---@param blockType integer
---@return boolean
function NEAR_SB.suppressCheck(skillType, skillLine, ability, morph, abilityId, blockType)
    sv = sv or NEAR_SB.ASV

	--[[ Debug ]] if sv.debug then d(dbg.open) d(dbg.lightGrey .. 'start of suppressCheck') end

    local block

    if sv.suppressBlock then
        --[[ Debug ]] if sv.debug then d(dbg.grey .. 'sv.suppressBlock == true') end
        block = false
    elseif blockType == 1 then
        --[[ Debug ]] if sv.debug then d(dbg.grey .. 'sv.suppressBlock == false, blockType == 1, running NEAR_SB.BlockPvP') end
        block = NEAR_SB.BlockPvP(skillType, skillLine, ability, morph)
    elseif blockType == 2 then
        --[[ Debug ]] if sv.debug then d(dbg.grey .. 'sv.suppressBlock == false, blockType == 2, running NEAR_SB.BlockRecasts') end
        block = NEAR_SB.BlockRecasts(skillType, skillLine, ability, morph, abilityId)
    elseif blockType == 3 then
        --[[ Debug ]] if sv.debug then d(dbg.grey .. 'sv.suppressBlock == false, blockType == 3, running NEAR_SB.BlockOnMaxCrux') end
        block = NEAR_SB.BlockOnMaxCrux()
    else
        --[[ Debug ]] if sv.debug then d(dbg.grey .. 'sv.suppressBlock == false, blockType == not defined, defaulting block = true') end
        block = true
    end

    --[[ Debug ]] if sv.debug then d(dbg.white.. 'block = '.. tostring(block)) end

	--[[ Debug ]] if sv.debug then d(dbg.grey.. 'end of suppressCheck') d(dbg.close) end

    return block
end
