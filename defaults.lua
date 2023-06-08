NEAR_SB.defaults = {}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

NEAR_SB.defaults = {
    debug = false,
    debug_init = false,
    debug_init_cast = false,
    debug_init_recast = false,
    debug_init_pvp = false,
    debug_recast = false,
    debug_pvp = false,
    message = false,
    blockPvP = true,
    showError = true,
    -- bindings = {
    --     [1] = '',
    --     [2] = '',
    --     [3] = '',
    --     [4] = '',
    --     [5] = '',
    --     [6] = '',
    --     [7] = '',
    --     [8] = '',
    -- },
}

NEAR_SB.defaults.skilldata = { -- Toggle block skills/messages
    ["class"] = {
        ["Flame"] = { -- Ardent Flame
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Draconic"] = { -- Draconic Power
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Earth"] = { -- Earthen Heart
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Dark"] = { -- Dark Magic
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- Crystal Shard
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Crystal Shard
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Crystal Weapon
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Crystal Fragments
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Daedric"] = { -- Daedric Summoning
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Storm"] = { -- Storm Calling
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Assassin"] = { -- Assassination
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- Grim Focus
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Grim Focus
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Relentless Focus
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Merciless Resolve
            },
        },
        ["Shadow"] = { -- Shadow
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Siphon"] = { -- Siphoning
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- Siphoning Strikes
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Siphoning Strikes
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Siphoning Attacks
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Leeching Strikes
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Animal"] = { -- Animal Companions
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Green"] = { -- Green Balance
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Winter"] = { -- Winter's Embrace
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Grave"] = { -- Grave Lord
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Bone"] = { -- Bone Tyrant
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Living"] = { -- Living Death
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Spear"] = { -- Aedric Spear
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Dawn"] = { -- Dawn's Wrath
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Resto"] = { -- Restoring Light
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Herald"] = { -- Herald of the Tome
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Soldier"] = { -- Soldier of Apocrypha
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        ["Curative"] = { -- Curative Runeforms
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
    },
    ["weapon"] = {
        [1] = { -- Two Handed
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        [2] = { -- One Hand and Shield
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        [3] = { -- Dual Wield
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        [4] = { -- Bow
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        [5] = { -- Destruction Staff
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        [6] = { -- Restoration Staff
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
    },
    ["armor"] = {
        [1] = { -- Light Armor
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        [2] = { -- Medium Armor
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        [3] = { -- Heavy Armor
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
    },
    ["world"] = {
        [4] = { -- Soul Magic
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        [5] = { -- Vampire
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        [6] = { -- Werewolf
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
    },
    ["guild"] = {
        [2] = { -- Fighters Guild
            [1] = { -- Dawnbreaker
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Dawnbreaker
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Flawless Dawnbreaker
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Dawnbreaker of Smiting
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- Expert Hunter
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Expert Hunter
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Evil Hunter
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Camouflaged Hunter
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        [3] = { -- Mages Guild
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- Magelight
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Magelight
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Inner Light
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Radiant Magelight
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        [4] = { -- Psijic Order
            [1] = { -- Undo
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Undo
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Precognition
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Temporal Guard
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [6] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        [6] = { -- Undaunted
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
    },
    ["ava"] = {
        [1] = { -- Assault
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
        },
        [3] = { -- Support
            [1] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [2] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [3] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [4] = { -- 
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- 
            },
            [5] = { -- Revealing Flare
                [0] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Revealing Flare
                [1] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Lingering Flare
                [2] = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, }, }, -- Blinding Flare
            },
        },
    },
}
