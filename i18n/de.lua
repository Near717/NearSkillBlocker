
local strings = {
    -- SI_BINDING_NAME_NEARSB_key1        = 'Key 1',
    -- SI_BINDING_NAME_NEARSB_key2        = 'Key 2',
    -- SI_BINDING_NAME_NEARSB_key3        = 'Key 3',
    -- SI_BINDING_NAME_NEARSB_key4        = 'Key 4',
    -- SI_BINDING_NAME_NEARSB_key5        = 'Key 5',
    -- SI_BINDING_NAME_NEARSB_key6        = 'Key 6',
    -- SI_BINDING_NAME_NEARSB_key7        = 'Key 7',
    -- SI_BINDING_NAME_NEARSB_key8        = 'Key 8',
    SI_BINDING_NAME_NEARSB_blockPvP    = 'An/Aus: PvP',

    NEARSB_registered              = 'Registriert',
    NEARSB_unregistered            = 'Unregistriert',

    NEARSB_LAM_bpvp_name            = 'Blockieren in PvP zones AN/AUS',
    NEARSB_LAM_bpvp_tooltip         = 'Ausgewählte Fähigkeiten in AvA und Schlachtfeldern blockieren',
    NEARSB_LAM_bpvp_warning         = 'AUS: Der 1. Zonenwechsel wird das Spiel kurz einfrieren lassen.',
    NEARSB_LAM_brc_name             = 'Blockiere erneutes Casten AN/AUS',
    NEARSB_LAM_brc_tooltip          = 'Das erneute Ausführen von ausgewählte Fähigkeiten blockieren',
    NEARSB_LAM_brc_warning          = 'AUS: Wird das erneute Ausführen nicht blockieren aber wird möglicherweise die Performance verbessern.',
    NEARSB_LAM_msg_name             = 'Registrierte/Unregistrierte Nachrichten',
    -- NEARSB_LAM_showE_name           = 'Invalid ability alert',
    -- NEARSB_LAM_showE_tooltip        = 'Show an alert when a suppressed ability is used, if disabled the ability will fail silently.',

    NEARSB_LAM_sksel_name           = 'Skill Auswahl',
    -- NEARSB_LAM_classsel_name        = 'Class selector',
    NEARSB_LAM_cmd_text             = 'Chat Befehl zum öffenen dieses Menüs: \n"/skillblocker" \n\nChat Befehl zum wechseln (AN/AUS) der PvP blockierten Fähigkeiten: \n"/sb/blockpvp"',
    -- NEARSB_LAM_reglist_name         = 'Currently registered list',

    NEARSB_LAM_co_bcast_name         = 'Blockiere Cast',
    NEARSB_LAM_co_brecast_name       = 'Blockiere Recast',
    -- NEARSB_LAM_co_brecast_warning    = 'This option relies on the game setting '..GetString(SI_INTERFACE_OPTIONS_ACTION_BAR_TIMERS)..' being ON! (under the setting panel: "'..GetString(SI_SETTINGSYSTEMPANEL9)..'"!)',
    NEARSB_LAM_co_bpvp_name          = 'Blockieren in PvP',
}


for stringId, stringValue in pairs(strings) do
    SafeAddString(_G[stringId], stringValue, 2) --Add a new version 2 of the stringIds, in client language
end
