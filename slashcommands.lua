NEAR_SB.slash_commands = {}
local addon = NEAR_SB
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NEAR_SB.activateSlashCommands()
    -- blockPvP
    SLASH_COMMANDS["/sb/blockpvp"] = function () addon.slash_commands.blockPvP() end
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Slash command functions
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NEAR_SB.slash_commands.blockPvP() -- Block PvP
    local sv = NEAR_SB.ASV
    local dbg = NEAR_SB.utils.dbg

	--[[ Debug ]] if sv.debug then d(dbg.white .. 'triggered slash_commands.blockPvP') end

    if sv.blockPvP then
		sv.blockPvP = false
		if sv.message or sv.debug then d(dbg.white .. 'Block PvP disabled') end
		addon.EZC()
	else
		sv.blockPvP = true
		if sv.message or sv.debug then d(dbg.white .. 'Block PvP enabled') end
		addon.EZC()
	end
end
