local dbg = NEAR_SB.utils.dbg
local color = NEAR_SB.utils.color
local skilldata = NEAR_SB.skilldata
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

---@param skillType string
---@param skillLine string|integer
---@param ability integer
---@param morph integer
---@param abilityId integer
---@return boolean
function NEAR_SB.BlockRecasts(skillType, skillLine, ability, morph, abilityId, block_notInCombat)
    local sv = NEAR_SB.ASV

	--[[ Debug ]] if sv.debug_recast then
        d(dbg.open) d(dbg.lightGrey .. 'start of BlockRecasts')
        d(dbg.white.. 'skillType: '..skillType.. '     skillLine: '..skillLine.. '\n'..color.white..'          ability: '..ability.. '     morph: '..morph)
        local abilityName = skilldata[skillType][skillLine][ability][morph].name
        d(dbg.white.. 'abilityId: '..abilityId.. '     abilityName: '..abilityName)
    end

    local recastHandler = false

    if block_notInCombat then
        local unitTag = 'player'
        if not IsUnitInCombat(unitTag) then
            recastHandler = true
        end
    end

    if recastHandler == false then
        local function UpdateRecastHandler(slotNum)
            local timeRemainingMS = GetActionSlotEffectTimeRemaining(slotNum)
            --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'timeRemainingMS = '..timeRemainingMS) end
            recastHandler = timeRemainingMS > 0
        end

        for slotNum = 3, 8 do
            if abilityId == GetSlotBoundId(slotNum) then
                --[[ Debug ]] if sv.debug_recast then d(dbg.white .. 'slotNum = ' .. slotNum) end
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

	--[[ Debug ]] if sv.debug_recast then
        d(dbg.white.. 'recastHandler = '.. tostring(recastHandler))
        d(dbg.grey.. 'end of BlockRecasts') d(dbg.close)
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

	--[[ Debug ]] if sv.debug_pvp then d(dbg.open) d(dbg.lightGrey .. 'start of BlockPvP') end

    local block = true

    -- check if its not blocking the skill in pvp zones and not blocking everything in pvp
	if not sv_skilldata[skillLine][ability][morph].pvp and not sv.blockPvP then

	    --[[ Debug ]] if sv.debug_pvp then d(dbg.white.. 'skillType: '..skillType.. '     skillLine: '..skillLine.. '\n'..color.white..'          ability: '..ability.. '     morph: '..morph) end

        local abilityId = skilldata[skillType][skillLine][ability][morph].id
        local abilityName = skilldata[skillType][skillLine][ability][morph].name
	    --[[ Debug ]] if sv.debug_pvp then d(dbg.white.. 'abilityId: '..abilityId.. '     abilityName: '..abilityName) end

        -- check if player is in a pvp zone
		if IsPlayerInAvAWorld() or IsActiveWorldBattleground() then
			--[[ Debug ]] if sv.debug_pvp then d(dbg.white .. 'player is on pvp zone') end
            block = false -- tell libsb to not block

            -- send this only the first time after entering pvp zone
            if (sv.message and sv_skilldata[skillLine][ability][morph].msg.pvp) or sv.debug_pvp then
                d(dbg.white .. str_unreg .. abilityName .. ' *PvP')
                sv_skilldata[skillLine][ability][morph].msg.pvp = false
            end
		else
			--[[ Debug ]] if sv.debug_pvp then d(dbg.white .. 'player is NOT on pvp zone') end
            block = true -- tell libsb to block

            -- set the PvP message to true
            if sv_skilldata[skillLine][ability][morph].msg.pvp ~= true then
                sv_skilldata[skillLine][ability][morph].msg.pvp = true
            end
		end
	end

	--[[ Debug ]] if sv.debug_pvp then
        d(dbg.white.. 'block = '.. tostring(block))
        d(dbg.grey.. 'end of BlockPvP') d(dbg.close)
    end

    return block
end


-------------------------------------------------------------------------------------------------------------------------------------------------------------------


---@param skillType string
---@param skillLine string|integer
---@param ability integer
---@param morph integer
---@return boolean
function NEAR_SB.BlockNotInCombat(skillType, skillLine, ability, morph)
    local sv = NEAR_SB.ASV

    --[[ Debug ]] if sv.debug_combat then d(dbg.open) d(dbg.lightGrey .. 'start of BlockNotInCombat') end

    local blockHandler = false

    local unitTag = 'player'
    local incombat = IsUnitInCombat(unitTag)

    if not incombat then
        blockHandler = true
    end

    -- check status of blockPvP and overrides the handler if needed
    if blockHandler == true then
        if NEAR_SB.BlockPvP(skillType, skillLine, ability, morph) == false then
            blockHandler = false
        end
    end

    --[[ Debug ]] if sv.debug_combat then
        d(dbg.white.. 'blockHandler = '.. tostring(blockHandler))
        d(dbg.grey.. 'end of BlockNotInCombat') d(dbg.close)
    end

    return blockHandler
end


-------------------------------------------------------------------------------------------------------------------------------------------------------------------


---@param skillType string
---@param skillLine string|integer
---@param ability integer
---@param morph integer
---@return boolean
function NEAR_SB.BlockOnCrux(skillType, skillLine, ability, morph, blockType, block_notInCombat)
    local sv = NEAR_SB.ASV

	--[[ Debug ]] if sv.debug_crux then d(dbg.open) d(dbg.lightGrey .. 'start of BlockOnCrux') end

    local blockHandler = false
    local unitTag = 'player'
    local listBuffs = {}

    if block_notInCombat then
        if not IsUnitInCombat(unitTag) then
            blockHandler = true
        end
    end

    if blockHandler == false then
        for buffIndex = 1, GetNumBuffs(unitTag) do
            local _, _, _, _, stackCount, _, _, _, _, _, buffAbilityId, _, _ = GetUnitBuffInfo(unitTag, buffIndex)
            table.insert(listBuffs, buffAbilityId)
            if (buffAbilityId == 184220) and ((blockType == 4 and stackCount == 3) or (blockType == 5 and not (stackCount == 3))) then -- Crux abilityId = 184220
                blockHandler = true
            end
        end

        if blockType == 5 and blockHandler == false then
            local buffExists = false
            for _, id in ipairs(listBuffs) do
                if id == 184220 then
                    buffExists = true
                    break
                end
            end

            if not buffExists then
                blockHandler = true
            end
        end
    end

    -- check status of blockPvP and overrides the handler if needed
    if blockHandler == true then
        if NEAR_SB.BlockPvP(skillType, skillLine, ability, morph) == false then
            blockHandler = false
        end
    end

    --[[ Debug ]] if sv.debug_crux then
        d(dbg.white.. 'blockHandler = '.. tostring(blockHandler))
        d(dbg.grey.. 'end of BlockOnCrux') d(dbg.close)
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
---@return boolean
function NEAR_SB.suppressCheck(skillType, skillLine, ability, morph, abilityId, blockType, block_notInCombat)
    local sv = NEAR_SB.ASV

	--[[ Debug ]] if sv.debug then d(dbg.open) d(dbg.lightGrey .. 'start of suppressCheck') end

    local block = false

    if not sv.suppressBlock then
        if blockType == 1 then
            --[[ Debug ]] if sv.debug then d(dbg.grey .. 'sv.suppressBlock == false, blockType == 1, running NEAR_SB.BlockPvP') end
            block = NEAR_SB.BlockPvP(skillType, skillLine, ability, morph) -- for cast blocks check only pvp since it is already skipped if block_notInCombat is true
        elseif blockType == 2 then
            --[[ Debug ]] if sv.debug then d(dbg.grey .. 'sv.suppressBlock == false, blockType == 2, running NEAR_SB.BlockRecasts') end
            block = NEAR_SB.BlockRecasts(skillType, skillLine, ability, morph, abilityId, block_notInCombat)
        elseif blockType == 3 then
            --[[ Debug ]] if sv.debug then d(dbg.grey .. 'sv.suppressBlock == false, blockType == 3, running NEAR_SB.BlockNotInCombat') end
            block = NEAR_SB.BlockNotInCombat(skillType, skillLine, ability, morph)
        elseif blockType == 4 or blockType == 5 then
            --[[ Debug ]] if sv.debug then d(dbg.grey .. 'sv.suppressBlock == false, blockType == '.. tostring(blockType) ..', running NEAR_SB.BlockOnCrux') end
            block = NEAR_SB.BlockOnCrux(skillType, skillLine, ability, morph, blockType, block_notInCombat)
        end
    end

    --[[ Debug ]] if sv.debug then d(dbg.white.. 'block = '.. tostring(block)) end

	--[[ Debug ]] if sv.debug then d(dbg.grey.. 'end of suppressCheck') d(dbg.close) end

    return block
end
