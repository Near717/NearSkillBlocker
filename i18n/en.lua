-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- English localization for Near's Skill Blocker
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

local strings = {
    -- SI_BINDING_NAME_NSB_key1        = 'Key 1',
    -- SI_BINDING_NAME_NSB_key2        = 'Key 2',
    -- SI_BINDING_NAME_NSB_key3        = 'Key 3',
    -- SI_BINDING_NAME_NSB_key4        = 'Key 4',
    -- SI_BINDING_NAME_NSB_key5        = 'Key 5',
    -- SI_BINDING_NAME_NSB_key6        = 'Key 6',
    -- SI_BINDING_NAME_NSB_key7        = 'Key 7',
    -- SI_BINDING_NAME_NSB_key8        = 'Key 8',
    SI_BINDING_NAME_NSB_blockPvP    = 'Toggle PvP',

    NSB_registered              = 'Registered',
    NSB_unregistered            = 'Unregistered',

    NSB_skillType_1             = GetString(SI_SKILLTYPE1),
    NSB_skillType_2             = GetString(SI_SKILLTYPE2),
    NSB_skillType_3             = GetString(SI_SKILLTYPE3),
    NSB_skillType_4             = GetString(SI_SKILLTYPE4),
    NSB_skillType_5             = GetString(SI_SKILLTYPE5),
    NSB_skillType_6             = GetString(SI_SKILLTYPE6),

    NSB_am_bpvp_name            = 'Toggle block on PvP zones',
    NSB_am_bpvp_tooltip         = 'Block selected abilities in AvA and Battlegrounds',
    NSB_am_bpvp_warning         = 'OFF: First time changing zones will cause the game to freeze for quick moment.',
    NSB_am_brc_name             = 'Toggle block recast',
    NSB_am_brc_tooltip          = 'Block recast for selected abilities',
    NSB_am_brc_warning          = 'OFF: Won\'t block recasts but might improve performance.',
    NSB_am_msg_name             = 'Registered/Unregistered messages',
    NSB_am_showE_name           = 'Invalid ability alert',
    NSB_am_showE_tooltip        = 'Show an alert when a suppressed ability is used, if disabled the ability will fail silently.',
    NSB_am_sksel_name           = 'Skill selector',
    NSB_am_classsel_name        = 'Class selector',
    NSB_am_cmd_text             = 'Command to open this menu: \n"/skillblocker" \n\nCommand to toggle PvP block/unblock: \n"/sb/blockpvp"',
    NSB_am_reglist_name         = 'Currently registered list',

    NSB_am_co_checkCast         = 'Block cast',
    NSB_am_co_regBlock          = 'Register block',
    NSB_am_co_unregBlock        = 'Unregister block',
    NSB_am_co_checkRecast       = 'Block recast',
    NSB_am_co_regBlockRecast    = 'Register block recast',
    NSB_am_co_unregBlockRecast  = 'Unregister block recast',
    NSB_am_co_checkPVP          = 'Block in PvP',
    NSB_am_co_regBlockPVP       = 'Register block in PvP',
    NSB_am_co_unregBlockPVP     = 'Unregister block in PvP',
}


for stringId, stringValue in pairs(strings) do
	ZO_CreateStringId(stringId, stringValue)
	SafeAddVersion(stringId, 1)
end
