
local strings = {
    SI_BINDING_NAME_NEARSB_supressblock = 'Alternar supressão de bloqueio',
    SI_BINDING_NAME_NEARSB_blockPvP     = 'Alternar PvP',

    NEARSB_registered               = 'Registrado',
    NEARSB_unregistered             = 'Desregistrado',


    NEARSB_LAM_supressblock_name    = 'Alterna supressão de bloqueio',
    NEARSB_LAM_supressblock_tooltip = 'Suprime TODOS os bloqueios em TODAS as zonas\nATIVADO: Não bloqueará nenhuma habilidade\n\nÚtil quando você precisa spammar uma habilidade para reduzir recursos',

    NEARSB_LAM_bpvp_name            = 'Alternar bloqueio em zonas de PvP',
    NEARSB_LAM_bpvp_tooltip         = 'Bloquear habilidades selecionadas em Guerra das Alianças e Campos de Batalha',

    NEARSB_LAM_brc_name             = 'Alternar bloqueio de recast',
    NEARSB_LAM_brc_tooltip          = 'Bloquear recast para habilidades selecionadas',
    NEARSB_LAM_brc_warning          = 'DESATIVADO: Não irá bloquear recast, mas pode melhorar o desempenho.',

    NEARSB_LAM_msg_name             = 'Mensagens de registrado/desregistrado',

    NEARSB_LAM_showE_name           = 'Alerta de habilidade inválida',
    NEARSB_LAM_showE_tooltip        = 'Mostrar um alerta quando uma habilidade suprimida for usada, quando desativado, a habilidade falhará silenciosamente.',


    NEARSB_LAM_skillsel_name        = 'Seletor de habilidades',
    NEARSB_LAM_classsel_name        = 'Seletor de classes',
    NEARSB_LAM_cmd_text             =
     'Comando para abrir este menu: \n"/skillblocker"' .. '\n\n' ..
     'Comando para alternar supressão de bloqueio: \n"/sb/supressblock"' .. '\n\n'..
     'Comando para alternar bloqueio/desbloqueio em PvP: \n"/sb/blockpvp"',
    NEARSB_LAM_reglist_name         = 'Atualmente registrado',


    NEARSB_LAM_co_bcast_name        = 'Bloquear cast',
    NEARSB_LAM_co_brecast_name      = 'Bloquear recast',
    NEARSB_LAM_co_brecast_warning   = 'Esta opção depende da configuração do jogo "'..GetString(SI_INTERFACE_OPTIONS_ACTION_BAR_TIMERS)..'" estar ATIVADA! \n(no painel de configuração: "'..GetString(SI_SETTINGSYSTEMPANEL9)..'")',
    NEARSB_LAM_co_bpvp_name         = 'Bloquear em PvP',
    NEARSB_LAM_co_bpvp_tooltip      = 'Essa configuração funciona com "Alternar bloqueio em zonas de PvP" e "Bloquear cast" para sobrescrever os bloqueios definidos pelo último.\n"Bloquear recast" atualmente não suportado.',
}


for stringId, stringValue in pairs(strings) do
    SafeAddString(_G[stringId], stringValue, 2) --Add a new version 2 of the stringIds, in client language
end
