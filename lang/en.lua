
local strings = {
    SI_BINDING_NAME_NEARSB_supressblock = 'Toggle block suppression',
    SI_BINDING_NAME_NEARSB_blockPvP     = 'Toggle PvP',

    NEARSB_registered               = 'Registered',
    NEARSB_unregistered             = 'Unregistered',


    NEARSB_LAM_supressblock_name    = 'Toggle block suppression',
    NEARSB_LAM_supressblock_tooltip = 'Supresses ALL blocks in ALL zones\nON: Won\'t block any ability\n\nUseful when you need to spam an ability to lower resources',

    NEARSB_LAM_bpvp_name            = 'Toggle block on PvP zones',
    NEARSB_LAM_bpvp_tooltip         = 'Block selected abilities in AvA and Battlegrounds',

    NEARSB_LAM_brc_name             = 'Toggle block recast',
    NEARSB_LAM_brc_tooltip          = 'Block recast for selected abilities',
    NEARSB_LAM_brc_warning          = 'OFF: Won\'t block recasts but might improve performance.',

    NEARSB_LAM_msg_name             = 'Registered/Unregistered messages',

    NEARSB_LAM_showE_name           = 'Invalid ability alert',
    NEARSB_LAM_showE_tooltip        = 'Show an alert when a suppressed ability is used, when disabled the ability will fail silently.',


    NEARSB_LAM_skillsel_name        = 'Skill selector',
    NEARSB_LAM_classsel_name        = 'Class selector',
    NEARSB_LAM_cmd_text             =
     'Command to open this menu: \n"/skillblocker"' .. '\n\n' ..
     'Command to toggle block suppression: \n"/sb/supressblock"' .. '\n\n'..
     'Command to toggle PvP block/unblock: \n"/sb/blockpvp"',
    NEARSB_LAM_reglist_name         = 'Currently registered',


    NEARSB_LAM_co_bcast_name        = 'Block cast',
    NEARSB_LAM_co_brecast_name      = 'Block recast',
    NEARSB_LAM_co_brecast_warning   = 'This option relies on the game setting "'..GetString(SI_INTERFACE_OPTIONS_ACTION_BAR_TIMERS)..'" being ON! \n(under the setting panel: "'..GetString(SI_SETTINGSYSTEMPANEL9)..'")',
    NEARSB_LAM_co_bpvp_name         = 'Block in PvP',
    NEARSB_LAM_co_bpvp_tooltip      = 'This setting works with "'..GetString(NEARSB_LAM_bpvp_name)..'" and "'..GetString(NEARSB_LAM_co_bcast_name)..'" to overwrite the blocks set by the latter.\n"'..GetString(NEARSB_LAM_co_brecast_name)..'" currently not supported.',
}


for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 1)
end
