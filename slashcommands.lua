NEAR_SB.slash_commands = {}
local addon = NEAR_SB
local dbg = NEAR_SB.utils.dbg
local sv = NEAR_SB.ASV
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NEAR_SB.RegisterSlashCommands()
    -- suppressBlock
    SLASH_COMMANDS["/sb/suppressblock"] = addon.slash_commands.suppressBlock
    -- blockPvP
    SLASH_COMMANDS["/sb/blockpvp"] = addon.slash_commands.blockPvP
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Slash command functions
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NEAR_SB.slash_commands.suppressBlock()
	sv = sv or NEAR_SB.ASV
	local cmdMessageType = sv.cmdMessageType

	--[[ Debug ]] if sv.debug then d(dbg.white .. 'triggered slash_commands.suppressBlock') end

	local sound = sv.cmdMessageSound and SOUNDS.GENERAL_ALERT_ERROR or nil
	local str = { GetString(NEARSB_suppressblock_enabled), GetString(NEARSB_suppressblock_disabled) }

	sv.suppressBlock = not sv.suppressBlock

	if cmdMessageType == 1 then
		d(dbg.white .. str[sv.suppressBlock and 1 or 2])
	elseif cmdMessageType == 2 then
		ZO_Alert(UI_ALERT_CATEGORY_ALERT, sound, str[sv.suppressBlock and 1 or 2])
	elseif cmdMessageType == 3 then
		if sv.debug then d(dbg.white .. str[sv.suppressBlock and 1 or 2]) end
	end
end

function NEAR_SB.slash_commands.blockPvP()
	sv = sv or NEAR_SB.ASV
	local cmdMessageType = sv.cmdMessageType

	--[[ Debug ]] if sv.debug then d(dbg.white .. 'triggered slash_commands.blockPvP') end

	local sound = sv.cmdMessageSound and SOUNDS.GENERAL_ALERT_ERROR or nil
	local str = { GetString(NEARSB_blockpvp_enabled), GetString(NEARSB_blockpvp_disabled) }

	sv.blockPvP = not sv.blockPvP

	if cmdMessageType == 1 then
		d(dbg.white .. str[sv.blockPvP and 1 or 2])
	elseif cmdMessageType == 2 then
		ZO_Alert(UI_ALERT_CATEGORY_ALERT, sound, str[sv.blockPvP and 1 or 2])
	elseif cmdMessageType == 3 then
		if sv.debug then d(dbg.white .. str[sv.blockPvP and 1 or 2]) end
	end
end
