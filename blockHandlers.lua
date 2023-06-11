
---@param skillType string
---@param skillLine string
---@param ability integer
---@param morph integer
---@param abilityId integer
---@return boolean
function NEAR_SB.BlockRecasts(skillType, skillLine, ability, morph, abilityId)
    local sv = NEAR_SB.ASV
	local dbg = NEAR_SB.utils.dbg
	local color = NEAR_SB.utils.color
    local skilldata = NEAR_SB.skilldata

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
    local sv = NEAR_SB.ASV
	local dbg = NEAR_SB.utils.dbg
	local color = NEAR_SB.utils.color
    local skilldata = NEAR_SB.skilldata
    local sv_skilldata = sv.skilldata[skillType]

    local str_reg = GetString(NEARSB_registered)
	local str_unreg = GetString(NEARSB_unregistered)

	--[[ Debug ]] if sv.debug_pvp then d(dbg.open) d(dbg.lightGrey .. 'start of BlockPvP') end

    local pvpHandler

    -- check if its blocking the skill while on pvp zones and is not blocking everything on pvp
	if not sv_skilldata[skillLine][ability][morph].pvp and not sv.blockPvP then

	    --[[ Debug ]] if sv.debug_pvp then d(dbg.white.. 'skillType: '..skillType.. '     skillLine: '..skillLine.. '\n'..color.white..'          ability: '..ability.. '     morph: '..morph) end

        local abilityId = skilldata[skillType][skillLine][ability][morph].id
        local abilityName = skilldata[skillType][skillLine][ability][morph].name
	    --[[ Debug ]] if sv.debug_pvp then d(dbg.white.. 'abilityId: '..abilityId.. '     abilityName: '..abilityName) end

        -- check if its on a pvp zone
		if IsPlayerInAvAWorld() or IsActiveWorldBattleground() then
			--[[ Debug ]] if sv.debug_pvp then d(dbg.white .. 'player is on pvp zone') end
            pvpHandler = false

            -- send this only the first time after entering pvp zone
            if (sv.message and sv_skilldata[skillLine][ability][morph].msg.pvp) or sv.debug_pvp then
                d(dbg.white .. str_unreg .. ' ' .. abilityName .. ' *PvP')
                sv_skilldata[skillLine][ability][morph].msg.pvp = false
            end
		else
			--[[ Debug ]] if sv.debug_pvp then d(dbg.white .. 'player is NOT on pvp zone') end
            pvpHandler = true
            if sv_skilldata[skillLine][ability][morph].msg.pvp ~= true then sv_skilldata[skillLine][ability][morph].msg.pvp = true end
		end
	else
		pvpHandler = true
	end

	--[[ Debug ]] if sv.debug_pvp then d(dbg.white.. 'pvpHandler = '.. tostring(pvpHandler)) end

	--[[ Debug ]] if sv.debug_pvp then d(dbg.grey.. 'end of BlockPvP') d(dbg.close) end

    return pvpHandler

end
