NEAR_SB.slash_commands = {}
local addon = NEAR_SB
local dbg = NEAR_SB.utils.dbg
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
	local sv = NEAR_SB.ASV
	local cmdMessageType = sv.cmdMessageType

	local str = { GetString(NEARSB_suppressblock_enabled), GetString(NEARSB_suppressblock_disabled) }

	sv.suppressBlock = not sv.suppressBlock

	if cmdMessageType == 1 then
		CHAT_SYSTEM:AddMessage(dbg.white .. str[sv.suppressBlock and 1 or 2])
	elseif cmdMessageType == 2 then
		local sound = sv.cmdMessageSound and SOUNDS.GENERAL_ALERT_ERROR or nil
		ZO_Alert(UI_ALERT_CATEGORY_ALERT, sound, str[sv.suppressBlock and 1 or 2])
	end
end

function NEAR_SB.slash_commands.blockPvP()
	local sv = NEAR_SB.ASV
	local cmdMessageType = sv.cmdMessageType

	local str = { GetString(NEARSB_blockpvp_enabled), GetString(NEARSB_blockpvp_disabled) }

	sv.blockPvP = not sv.blockPvP

	if cmdMessageType == 1 then
		CHAT_SYSTEM:AddMessage(dbg.white .. str[sv.blockPvP and 1 or 2])
	elseif cmdMessageType == 2 then
		local sound = sv.cmdMessageSound and SOUNDS.GENERAL_ALERT_ERROR or nil
		ZO_Alert(UI_ALERT_CATEGORY_ALERT, sound, str[sv.blockPvP and 1 or 2])
	end
end
