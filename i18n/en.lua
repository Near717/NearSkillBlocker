
local strings = {
    -- SI_BINDING_NAME_NEARSB_key1        = 'Key 1',
    -- SI_BINDING_NAME_NEARSB_key2        = 'Key 2',
    -- SI_BINDING_NAME_NEARSB_key3        = 'Key 3',
    -- SI_BINDING_NAME_NEARSB_key4        = 'Key 4',
    -- SI_BINDING_NAME_NEARSB_key5        = 'Key 5',
    -- SI_BINDING_NAME_NEARSB_key6        = 'Key 6',
    -- SI_BINDING_NAME_NEARSB_key7        = 'Key 7',
    -- SI_BINDING_NAME_NEARSB_key8        = 'Key 8',
    SI_BINDING_NAME_NEARSB_blockPvP    = 'Toggle PvP',

    NEARSB_registered              = 'Registered',
    NEARSB_unregistered            = 'Unregistered',

    NEARSB_LAM_bpvp_name            = 'Toggle block on PvP zones',
    NEARSB_LAM_bpvp_tooltip         = 'Block selected abilities in AvA and Battlegrounds',
    NEARSB_LAM_bpvp_warning         = 'OFF: First time changing zones will cause the game to freeze for quick moment.',
    NEARSB_LAM_brc_name             = 'Toggle block recast',
    NEARSB_LAM_brc_tooltip          = 'Block recast for selected abilities',
    NEARSB_LAM_brc_warning          = 'OFF: Won\'t block recasts but might improve performance.',
    NEARSB_LAM_msg_name             = 'Registered/Unregistered messages',
    NEARSB_LAM_showE_name           = 'Invalid ability alert',
    NEARSB_LAM_showE_tooltip        = 'Show an alert when a suppressed ability is used, when disabled the ability will fail silently.',

    NEARSB_LAM_sksel_name           = 'Skill selector',
    NEARSB_LAM_classsel_name        = 'Class selector',
    NEARSB_LAM_cmd_text             = 'Command to open this menu: \n"/skillblocker" \n\nCommand to toggle PvP block/unblock: \n"/sb/blockpvp"',
    NEARSB_LAM_reglist_name         = 'Currently registered list',

    NEARSB_LAM_co_bcast_name         = 'Block cast',
    NEARSB_LAM_co_brecast_name       = 'Block recast',
    NEARSB_LAM_co_brecast_warning    = 'This option relies on the game setting '..GetString(SI_INTERFACE_OPTIONS_ACTION_BAR_TIMERS)..' being ON! \n(under the setting panel: "'..GetString(SI_SETTINGSYSTEMPANEL9)..'")',
    NEARSB_LAM_co_bpvp_name          = 'Block in PvP',
}


for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 1)
end
