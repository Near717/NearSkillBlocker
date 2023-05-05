
---@param skillType string
---@param skillLine string
---@param ability integer
---@param morph integer
---@return boolean
function NEAR_SB.BlockRecasts(skillType, skillLine, ability, morph)
    local sv = NEAR_SB.ASV
	local dbg = NEAR_SB.utils.dbg
	local color = NEAR_SB.utils.color
    local skilldata = NEAR_SB.skilldata

	--[[ Debug ]] if sv.debug_recast then d(dbg.open) d(dbg.lightGrey .. 'start of BlockRecasts') end

	--[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'skillType: '..skillType.. '     skillLine: '..skillLine.. color.white..'\n          ability: '..ability.. '     morph: '..morph) end

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


    local function testSlots(abilityId, abilityId1, abilityId2, abilityId3)
        if (abilityId1 == nil or abilityId1 == '') and (abilityId2 == nil or abilityId2 == '') and (abilityId3 == nil or abilityId3 == '') then
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
        else
            if (abilityId == GetSlotBoundId(3)) or (abilityId1 == GetSlotBoundId(3)) or (abilityId2 == GetSlotBoundId(3)) or (abilityId3 == GetSlotBoundId(3)) then
                --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = 3') end
                UpdateRecastHandler(3)
            elseif (abilityId == GetSlotBoundId(4)) or (abilityId1 == GetSlotBoundId(4)) or (abilityId2 == GetSlotBoundId(4)) or (abilityId3 == GetSlotBoundId(4)) then
                --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = 4') end
                UpdateRecastHandler(4)
            elseif (abilityId == GetSlotBoundId(5)) or (abilityId1 == GetSlotBoundId(5)) or (abilityId2 == GetSlotBoundId(5)) or (abilityId3 == GetSlotBoundId(5)) then
                --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = 5') end
                UpdateRecastHandler(5)
            elseif (abilityId == GetSlotBoundId(6)) or (abilityId1 == GetSlotBoundId(6)) or (abilityId2 == GetSlotBoundId(6)) or (abilityId3 == GetSlotBoundId(6)) then
                --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = 6') end
                UpdateRecastHandler(6)
            elseif (abilityId == GetSlotBoundId(7)) or (abilityId1 == GetSlotBoundId(7)) or (abilityId2 == GetSlotBoundId(7)) or (abilityId3 == GetSlotBoundId(7)) then
                --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = 7') end
                UpdateRecastHandler(7)
            elseif (abilityId == GetSlotBoundId(8)) or (abilityId1 == GetSlotBoundId(8)) or (abilityId2 == GetSlotBoundId(8)) or (abilityId3 == GetSlotBoundId(8)) then
                --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = 8') end
                UpdateRecastHandler(8)
            else
                --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'slotNum = couldn\'t define') end
                recastHandler = false
            end
        end
    end

    local abilityId = skilldata[skillType][skillLine][ability][morph].id
    local abilityName = skilldata[skillType][skillLine][ability][morph].name
	--[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'abilityId: '..abilityId.. '     abilityName: '..abilityName) end

    if (skillType == 'weapon') and (skillLine == 5) and ((ability == 1) or (ability == 3) or (ability == 4) or (ability == 6)) then

	    --[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'ability = '.. ability) end

        local abilityId1 = skilldata[skillType][skillLine][ability][morph].id1
        local abilityId2 = skilldata[skillType][skillLine][ability][morph].id2
        local abilityId3 = skilldata[skillType][skillLine][ability][morph].id3

        testSlots(abilityId, abilityId1, abilityId2, abilityId3)

    else
        testSlots(abilityId)
    end

	--[[ Debug ]] if sv.debug_recast then d(dbg.white.. 'recastHandler = '.. tostring(recastHandler)) end

	--[[ Debug ]] if sv.debug_recast then d(dbg.grey.. 'end of BlockRecasts') d(dbg.close) end

    return recastHandler

end
