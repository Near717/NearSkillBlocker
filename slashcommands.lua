NEAR_SB.slash_commands = {}
local addon = NEAR_SB
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NEAR_SB.RegisterSlashCommands()
    -- supressBlock
    SLASH_COMMANDS["/sb/supressblock"] = addon.slash_commands.supressBlock
    -- blockPvP
    SLASH_COMMANDS["/sb/blockpvp"] = addon.slash_commands.blockPvP
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Slash command functions
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

function NEAR_SB.slash_commands.supressBlock() -- Supress Blocks
    local sv = NEAR_SB.ASV
    local dbg = NEAR_SB.utils.dbg

	--[[ Debug ]] if sv.debug then d(dbg.white .. 'triggered slash_commands.supressBlock') end

    if sv.supressBlock then
		sv.supressBlock = false
		if sv.message or sv.debug then d(dbg.white .. 'Supress Block disabled') end
	else
		sv.supressBlock = true
		if sv.message or sv.debug then d(dbg.white .. 'Supress Block enabled') end
	end
end

function NEAR_SB.slash_commands.blockPvP() -- Block PvP
    local sv = NEAR_SB.ASV
    local dbg = NEAR_SB.utils.dbg

	--[[ Debug ]] if sv.debug then d(dbg.white .. 'triggered slash_commands.blockPvP') end

    if sv.blockPvP then
		sv.blockPvP = false
		if sv.message or sv.debug then d(dbg.white .. 'Block PvP disabled') end
	else
		sv.blockPvP = true
		if sv.message or sv.debug then d(dbg.white .. 'Block PvP enabled') end
	end
end
