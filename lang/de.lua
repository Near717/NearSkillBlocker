
local strings = {
    SI_BINDING_NAME_NEARSB_blockPvP = 'An/Aus: PvP',

    NEARSB_registered               = 'Registriert',
    NEARSB_unregistered             = 'Unregistriert',

    NEARSB_LAM_bpvp_name            = 'Blockieren in PvP zones AN/AUS',
    NEARSB_LAM_bpvp_tooltip         = 'Ausgewählte Fähigkeiten in AvA und Schlachtfeldern blockieren',
    NEARSB_LAM_brc_name             = 'Blockiere erneutes Casten AN/AUS',
    NEARSB_LAM_brc_tooltip          = 'Das erneute Ausführen von ausgewählte Fähigkeiten blockieren',
    NEARSB_LAM_brc_warning          = 'AUS: Wird das erneute Ausführen nicht blockieren aber wird möglicherweise die Performance verbessern.',
    NEARSB_LAM_msg_name             = 'Registrierte/Unregistrierte Nachrichten',
    NEARSB_LAM_showE_name           = 'Ungültige Fähigkeitswarnung', -- need to check
    NEARSB_LAM_showE_tooltip        = 'Zeigen Sie eine Warnung, wenn eine blockierte Fähigkeit verwendet wird. Wenn sie deaktiviert ist, schlägt die Fähigkeit stillschweigend fehl.', -- need to check

    NEARSB_LAM_skillsel_name        = 'Skill Auswahl',
    NEARSB_LAM_classsel_name        = 'Class Auswahl', -- need to check
    NEARSB_LAM_cmd_text             = 'Chat Befehl zum öffenen dieses Menüs: \n"/skillblocker" \n\nChat Befehl zum wechseln (AN/AUS) der PvP blockierten Fähigkeiten: \n"/sb/blockpvp"',
    NEARSB_LAM_reglist_name         = 'Derzeit registriert', -- need to check

    NEARSB_LAM_co_bcast_name        = 'Blockiere Cast',
    NEARSB_LAM_co_brecast_name      = 'Blockiere Recast',
    NEARSB_LAM_co_brecast_warning   = 'Diese Option hängt davon ab, dass die Spieleinstellung '..GetString(SI_INTERFACE_OPTIONS_ACTION_BAR_TIMERS)..' aktiviert ist! (unter dem Einstellungsfeld: "'..GetString(SI_SETTINGSYSTEMPANEL9)..'"!)', -- need to check
    NEARSB_LAM_co_bpvp_name         = 'Blockieren in PvP',
}


for stringId, stringValue in pairs(strings) do
    SafeAddString(_G[stringId], stringValue, 2) --Add a new version 2 of the stringIds, in client language
end
