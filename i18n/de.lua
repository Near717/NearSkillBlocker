
local strings = {
    -- SI_BINDING_NAME_NSB_key1        = 'Key 1',
    -- SI_BINDING_NAME_NSB_key2        = 'Key 2',
    -- SI_BINDING_NAME_NSB_key3        = 'Key 3',
    -- SI_BINDING_NAME_NSB_key4        = 'Key 4',
    -- SI_BINDING_NAME_NSB_key5        = 'Key 5',
    -- SI_BINDING_NAME_NSB_key6        = 'Key 6',
    -- SI_BINDING_NAME_NSB_key7        = 'Key 7',
    -- SI_BINDING_NAME_NSB_key8        = 'Key 8',
    SI_BINDING_NAME_NSB_blockPvP    = 'An/Aus: PvP',

    NSB_registered              = 'Registriert',
    NSB_unregistered            = 'Unregistriert',

    --Using string version 1 of EN
    --NSB_skillType_1              = 'Klasse',
    --NSB_skillType_2              = 'Waffe',
    --NSB_skillType_3              = 'Armor',
    --NSB_skillType_4              = 'World',
    --NSB_skillType_5              = 'Guild',
    --NSB_skillType_6              = 'AvA',

    NSB_am_bpvp_name            = 'Blockieren in PvP zones AN/AUS',
    NSB_am_bpvp_tooltip         = 'Ausgewählte Fähigkeiten in AvA und Schlachtfeldern blockieren',
    NSB_am_bpvp_warning         = 'AUS: Der 1. Zonenwechsel wird das Spiel kurz einfrieren lassen.',
    NSB_am_brc_name             = 'Blockiere erneutes Casten AN/AUS',
    NSB_am_brc_tooltip          = 'Das erneute Ausführen von ausgewählte Fähigkeiten blockieren',
    NSB_am_brc_warning          = 'AUS: Wird das erneute Ausführen nicht blockieren aber wird möglicherweise die Performance verbessern.',
    NSB_am_msg_name             = 'Registrierte/Unregistrierte Nachrichten',
    -- NSB_am_showE_name           = 'Invalid ability alert',
    -- NSB_am_showE_tooltip        = 'Show an alert when a suppressed ability is used, if disabled the ability will fail silently.',
    NSB_am_sksel_name           = 'Skill Auswahl',
    NSB_am_cmd_text             = 'Chat Befehl zum öffenen dieses Menüs: \n"/skillblocker" \n\nChat Befehl zum wechseln (AN/AUS) der PvP blockierten Fähigkeiten: \n"/sb/blockpvp"',
    -- NSB_am_reglist_name         = 'Currently registered list',

    NSB_am_co_checkCast         = 'Blockiere Cast',
    NSB_am_co_regBlock          = 'Registriere Block.',
    NSB_am_co_unregBlock        = 'Unregistriere Block.',
    NSB_am_co_checkRecast       = 'Blockiere Recast',
    NSB_am_co_regBlockRecast    = 'Registriere Block. Recast',
    NSB_am_co_unregBlockRecast  = 'Unregistriere Block. Recast',
    NSB_am_co_checkPVP          = 'Blockieren in PvP',
    NSB_am_co_regBlockPVP       = 'Registriere Block. in PvP',
    NSB_am_co_unregBlockPVP     = 'Unregistriere Block. in PvP',
}


for stringId, stringValue in pairs(strings) do
    SafeAddString(_G[stringId], stringValue, 2) --Add a new version 2 of the stringIds, in client language
end