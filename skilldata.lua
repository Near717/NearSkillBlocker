NEAR_SB.skilldata = {}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

--[[

local classId = {
    ["Dragonknight"] = 1,
    ["Sorcerer"] = 2,
    ["Nightblade"] = 3,
    ["Warden"] = 4,
    ["Necromancer"] = 5,
    ["Templar"] = 6,
    ["Arcanist"] = 117,
}

local skillLineId = {
    [SKILL_TYPE_CLASS] = {
        ["Flame"] = 35, -- "Ardent Flame"
        ["Draconic"] = 36, -- "Draconic Power"
        ["Earth"] = 37, -- "Earthen Heart"
        ["Dark"] = 41, -- "Dark Magic"
        ["Daedric"] = 42, -- "Daedric Summoning"
        ["Storm"] = 43, -- "Storm Calling"
        ["Assassin"] = 38, -- "Assassination"
        ["Shadow"] = 39, -- "Shadow"
        ["Siphon"] = 40, -- "Siphoning"
        ["Animal"] = 127, -- "Animal Companions"
        ["Green"] = 128, -- "Green Balance"
        ["Winter"] = 129, -- "Winter's Embrace"
        ["Grave"] = 131, -- "Grave Lord"
        ["Bone"] = 132, -- "Bone Tyrant"
        ["Living"] = 133, -- "Living Death"
        ["Spear"] = 22, -- "Aedric Spear"
        ["Dawn"] = 27, -- "Dawn's Wrath"
        ["Resto"] = 28, -- "Restoring Light"
        ["Herald"] = 218, -- "Herald of the Tome"
        ["Soldier"] = 219, -- "Soldier of Apocrypha"
        ["Curative"] = 220, -- "Curative Runeforms"
    },
    [SKILL_TYPE_WEAPON] = {
        [1] = 30, -- "Two Handed",
        [2] = 29, -- "One Hand and Shield",
        [3] = 31, -- "Dual Wield",
        [4] = 32, -- "Bow",
        [5] = 33, -- "Destruction Staff",
        [6] = 34, -- "Restoration Staff",
    },
    [SKILL_TYPE_ARMOR] = {
        [1] = 24, -- "Light Armor",
        [2] = 25, -- "Medium Armor",
        [3] = 26, -- "Heavy Armor",
    },
    [SKILL_TYPE_WORLD] = {
        [4] = 72, -- "Soul Magic",
        [5] = 51, -- "Vampire",
        [6] = 50, -- "Werewolf",
    },
    [SKILL_TYPE_GUILD] = {
        [2] = 45, -- "Fighters Guild",
        [3] = 44, -- "Mages Guild",
        [4] = 130, -- "Psijic Order",
        [6] = 55, -- "Undaunted",
    },
    [SKILL_TYPE_AVA] = {
        [1] = 48, -- "Assault",
        [3] = 67, -- "Support",
    },
}

]]

NEAR_SB.classdata = {
    ["name"] = {
        [1] = zo_strformat("<<1>>", GetClassName(0, 1)), -- "Dragonknight"
        [2] = zo_strformat("<<1>>", GetClassName(0, 2)), -- "Sorcerer"
        [3] = zo_strformat("<<1>>", GetClassName(0, 3)), -- "Nightblade"
        [4] = zo_strformat("<<1>>", GetClassName(0, 4)), -- "Warden"
        [5] = zo_strformat("<<1>>", GetClassName(0, 5)), -- "Necromancer"
        [6] = zo_strformat("<<1>>", GetClassName(0, 6)), -- "Templar"
        [7] = zo_strformat("<<1>>", GetClassName(0, 117)), -- "Arcanist"
    },
}

NEAR_SB.skilldata = {
    ["class"] = {
        ["Flame"] = { -- Ardent Flame
            name = zo_strformat("<<1>>", GetSkillLineNameById(35)),
            [1] = { -- 
                [0] = { id = 28988, name = zo_strformat("<<1>>", GetAbilityName(28988)), }, -- Dragonknight Standart
                [1] = { id = 32958, name = zo_strformat("<<1>>", GetAbilityName(32958)), }, -- 
                [2] = { id = 32947, name = zo_strformat("<<1>>", GetAbilityName(32947)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 23806, name = zo_strformat("<<1>>", GetAbilityName(23806)), }, -- 
                [1] = { id = 20805, name = zo_strformat("<<1>>", GetAbilityName(20805)), }, -- 
                [2] = { id = 20816, name = zo_strformat("<<1>>", GetAbilityName(20816)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 20657, name = zo_strformat("<<1>>", GetAbilityName(20657)), }, -- 
                [1] = { id = 20668, name = zo_strformat("<<1>>", GetAbilityName(20668)), }, -- 
                [2] = { id = 20660, name = zo_strformat("<<1>>", GetAbilityName(20660)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 20917, name = zo_strformat("<<1>>", GetAbilityName(20917)), }, -- 
                [1] = { id = 20944, name = zo_strformat("<<1>>", GetAbilityName(20944)), }, -- 
                [2] = { id = 20930, name = zo_strformat("<<1>>", GetAbilityName(20930)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 20492, name = zo_strformat("<<1>>", GetAbilityName(20492)), }, -- 
                [1] = { id = 20499, name = zo_strformat("<<1>>", GetAbilityName(20499)), }, -- 
                [2] = { id = 20496, name = zo_strformat("<<1>>", GetAbilityName(20496)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 28967, name = zo_strformat("<<1>>", GetAbilityName(28967)), }, -- 
                [1] = { id = 32853, name = zo_strformat("<<1>>", GetAbilityName(32853)), }, -- 
                [2] = { id = 32881, name = zo_strformat("<<1>>", GetAbilityName(32881)), }, -- 
            },
        },
        ["Draconic"] = { -- Draconic Power
            name = zo_strformat("<<1>>", GetSkillLineNameById(36)),
            [1] = { -- Dragon Leap
                [0] = { id = 29012, name = zo_strformat("<<1>>", GetAbilityName(29012)), }, -- Dragon Leap
                [1] = { id = 32719, name = zo_strformat("<<1>>", GetAbilityName(32719)), }, -- Take Flight
                [2] = { id = 32715, name = zo_strformat("<<1>>", GetAbilityName(32715)), }, -- Ferocious Leap
            },
            [2] = { -- 
                [0] = { id = 20319, name = zo_strformat("<<1>>", GetAbilityName(20319)), }, -- 
                [1] = { id = 20328, name = zo_strformat("<<1>>", GetAbilityName(20328)), }, -- 
                [2] = { id = 20323, name = zo_strformat("<<1>>", GetAbilityName(20323)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 20245, name = zo_strformat("<<1>>", GetAbilityName(20245)), }, -- 
                [1] = { id = 20252, name = zo_strformat("<<1>>", GetAbilityName(20252)), }, -- 
                [2] = { id = 20251, name = zo_strformat("<<1>>", GetAbilityName(20251)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 29004, name = zo_strformat("<<1>>", GetAbilityName(29004)), }, -- 
                [1] = { id = 32744, name = zo_strformat("<<1>>", GetAbilityName(32744)), }, -- 
                [2] = { id = 32722, name = zo_strformat("<<1>>", GetAbilityName(32722)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 21007, name = zo_strformat("<<1>>", GetAbilityName(21007)), }, -- 
                [1] = { id = 21014, name = zo_strformat("<<1>>", GetAbilityName(21014)), }, -- 
                [2] = { id = 21017, name = zo_strformat("<<1>>", GetAbilityName(21017)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 31837, name = zo_strformat("<<1>>", GetAbilityName(31837)), }, -- 
                [1] = { id = 32792, name = zo_strformat("<<1>>", GetAbilityName(32792)), }, -- 
                [2] = { id = 32785, name = zo_strformat("<<1>>", GetAbilityName(32785)), }, -- 
            },
        },
        ["Earth"] = { -- Earthen Heart
            name = zo_strformat("<<1>>", GetSkillLineNameById(37)),
            [1] = { -- 
                [0] = { id = 15957, name = zo_strformat("<<1>>", GetAbilityName(15957)), }, -- 
                [1] = { id = 17874, name = zo_strformat("<<1>>", GetAbilityName(17874)), }, -- 
                [2] = { id = 17878, name = zo_strformat("<<1>>", GetAbilityName(17878)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 29032, name = zo_strformat("<<1>>", GetAbilityName(29032)), }, -- 
                [1] = { id = 31820, name = zo_strformat("<<1>>", GetAbilityName(31820)), }, -- 
                [2] = { id = 31816, name = zo_strformat("<<1>>", GetAbilityName(31816)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 29043, name = zo_strformat("<<1>>", GetAbilityName(29043)), }, -- 
                [1] = { id = 31874, name = zo_strformat("<<1>>", GetAbilityName(31874)), }, -- 
                [2] = { id = 31888, name = zo_strformat("<<1>>", GetAbilityName(31888)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 29071, name = zo_strformat("<<1>>", GetAbilityName(29071)), }, -- 
                [1] = { id = 29224, name = zo_strformat("<<1>>", GetAbilityName(29224)), }, -- 
                [2] = { id = 32673, name = zo_strformat("<<1>>", GetAbilityName(32673)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 29037, name = zo_strformat("<<1>>", GetAbilityName(29037)), }, -- 
                [1] = { id = 32685, name = zo_strformat("<<1>>", GetAbilityName(32685)), }, -- 
                [2] = { id = 32678, name = zo_strformat("<<1>>", GetAbilityName(32678)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 29059, name = zo_strformat("<<1>>", GetAbilityName(29059)), }, -- 
                [1] = { id = 20779, name = zo_strformat("<<1>>", GetAbilityName(20779)), }, -- 
                [2] = { id = 32710, name = zo_strformat("<<1>>", GetAbilityName(32710)), }, -- 
            },
        },
        ["Dark"] = { -- Dark Magic
            name = zo_strformat("<<1>>", GetSkillLineNameById(41)),
            [1] = { -- 
                [0] = { id = 27706, name = zo_strformat("<<1>>", GetAbilityName(27706)), }, -- 
                [1] = { id = 28341, name = zo_strformat("<<1>>", GetAbilityName(28341)), }, -- 
                [2] = { id = 28348, name = zo_strformat("<<1>>", GetAbilityName(28348)), }, -- 
            },
            [2] = { -- Crystal Shard
                [0] = { id = 43714, name = zo_strformat("<<1>>", GetAbilityName(43714)), }, -- Crystal Shard
                [1] = { id = 46331, name = zo_strformat("<<1>>", GetAbilityName(46331)), }, -- Crystal Weapon
                [2] = { id = 46324, name = zo_strformat("<<1>>", GetAbilityName(46324)), }, -- Crystal Fragments
            },
            [3] = { -- 
                [0] = { id = 28025, name = zo_strformat("<<1>>", GetAbilityName(28025)), }, -- 
                [1] = { id = 28308, name = zo_strformat("<<1>>", GetAbilityName(28308)), }, -- 
                [2] = { id = 28311, name = zo_strformat("<<1>>", GetAbilityName(28311)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 24371, name = zo_strformat("<<1>>", GetAbilityName(24371)), }, -- 
                [1] = { id = 24578, name = zo_strformat("<<1>>", GetAbilityName(24578)), }, -- 
                [2] = { id = 24574, name = zo_strformat("<<1>>", GetAbilityName(24574)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 24584, name = zo_strformat("<<1>>", GetAbilityName(24584)), }, -- 
                [1] = { id = 24595, name = zo_strformat("<<1>>", GetAbilityName(24595)), }, -- 
                [2] = { id = 24589, name = zo_strformat("<<1>>", GetAbilityName(24589)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 24828, name = zo_strformat("<<1>>", GetAbilityName(24828)), }, -- 
                [1] = { id = 24842, name = zo_strformat("<<1>>", GetAbilityName(24842)), }, -- 
                [2] = { id = 24834, name = zo_strformat("<<1>>", GetAbilityName(24834)), }, -- 
            },
        },
        ["Daedric"] = { -- Daedric Summoning
            name = zo_strformat("<<1>>", GetSkillLineNameById(42)),
            [1] = { -- 
                [0] = { id = 23634, name = zo_strformat("<<1>>", GetAbilityName(23634)), }, -- 
                [1] = { id = 23492, name = zo_strformat("<<1>>", GetAbilityName(23492)), }, -- 
                [2] = { id = 23495, name = zo_strformat("<<1>>", GetAbilityName(23495)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 23304, name = zo_strformat("<<1>>", GetAbilityName(23304)), id1 = 108840, }, -- 
                [1] = { id = 23319, name = zo_strformat("<<1>>", GetAbilityName(23319)), id1 = 76076, }, -- 
                [2] = { id = 23316, name = zo_strformat("<<1>>", GetAbilityName(23316)), id1 = 77182, }, -- 
            },
            [3] = { -- 
                [0] = { id = 24326, name = zo_strformat("<<1>>", GetAbilityName(24326)), }, -- 
                [1] = { id = 24328, name = zo_strformat("<<1>>", GetAbilityName(24328)), }, -- 
                [2] = { id = 24330, name = zo_strformat("<<1>>", GetAbilityName(24330)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 24613, name = zo_strformat("<<1>>", GetAbilityName(24613)), id1 = 108845, }, -- 
                [1] = { id = 24636, name = zo_strformat("<<1>>", GetAbilityName(24636)), id1 = 77140, }, -- 
                [2] = { id = 24639, name = zo_strformat("<<1>>", GetAbilityName(24639)), id1 = 77369, }, -- 
            },
            [5] = { -- 
                [0] = { id = 28418, name = zo_strformat("<<1>>", GetAbilityName(28418)), }, -- 
                [1] = { id = 29489, name = zo_strformat("<<1>>", GetAbilityName(29489)), }, -- 
                [2] = { id = 29482, name = zo_strformat("<<1>>", GetAbilityName(29482)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 24158, name = zo_strformat("<<1>>", GetAbilityName(24158)), }, -- 
                [1] = { id = 24165, name = zo_strformat("<<1>>", GetAbilityName(24165)), }, -- 
                [2] = { id = 24163, name = zo_strformat("<<1>>", GetAbilityName(24163)), }, -- 
            },
        },
        ["Storm"] = { -- Storm Calling
            name = zo_strformat("<<1>>", GetSkillLineNameById(43)),
            [1] = { -- 
                [0] = { id = 24785, name = zo_strformat("<<1>>", GetAbilityName(24785)), }, -- 
                [1] = { id = 24806, name = zo_strformat("<<1>>", GetAbilityName(24806)), }, -- 
                [2] = { id = 24804, name = zo_strformat("<<1>>", GetAbilityName(24804)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 18718, name = zo_strformat("<<1>>", GetAbilityName(18718)), }, -- 
                [1] = { id = 19123, name = zo_strformat("<<1>>", GetAbilityName(19123)), }, -- 
                [2] = { id = 19109, name = zo_strformat("<<1>>", GetAbilityName(19109)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 23210, name = zo_strformat("<<1>>", GetAbilityName(23210)), }, -- 
                [1] = { id = 23231, name = zo_strformat("<<1>>", GetAbilityName(23231)), }, -- 
                [2] = { id = 23213, name = zo_strformat("<<1>>", GetAbilityName(23213)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 23182, name = zo_strformat("<<1>>", GetAbilityName(23182)), }, -- 
                [1] = { id = 23200, name = zo_strformat("<<1>>", GetAbilityName(23200)), }, -- 
                [2] = { id = 23205, name = zo_strformat("<<1>>", GetAbilityName(23205)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 23670, name = zo_strformat("<<1>>", GetAbilityName(23670)), }, -- 
                [1] = { id = 23674, name = zo_strformat("<<1>>", GetAbilityName(23674)), }, -- 
                [2] = { id = 23678, name = zo_strformat("<<1>>", GetAbilityName(23678)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 23234, name = zo_strformat("<<1>>", GetAbilityName(23234)), }, -- 
                [1] = { id = 23236, name = zo_strformat("<<1>>", GetAbilityName(23236)), }, -- 
                [2] = { id = 23277, name = zo_strformat("<<1>>", GetAbilityName(23277)), }, -- 
            },
        },
        ["Assassin"] = { -- Assassination
            name = zo_strformat("<<1>>", GetSkillLineNameById(38)),
            [1] = { -- 
                [0] = { id = 33398, name = zo_strformat("<<1>>", GetAbilityName(33398)), }, -- 
                [1] = { id = 36508, name = zo_strformat("<<1>>", GetAbilityName(36508)), }, -- 
                [2] = { id = 36514, name = zo_strformat("<<1>>", GetAbilityName(36514)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 33386, name = zo_strformat("<<1>>", GetAbilityName(33386)), }, -- 
                [1] = { id = 34843, name = zo_strformat("<<1>>", GetAbilityName(34843)), }, -- 
                [2] = { id = 34851, name = zo_strformat("<<1>>", GetAbilityName(34851)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 18342, name = zo_strformat("<<1>>", GetAbilityName(18342)), }, -- 
                [1] = { id = 25493, name = zo_strformat("<<1>>", GetAbilityName(25493)), }, -- 
                [2] = { id = 25484, name = zo_strformat("<<1>>", GetAbilityName(25484)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 33375, name = zo_strformat("<<1>>", GetAbilityName(33375)), }, -- 
                [1] = { id = 35414, name = zo_strformat("<<1>>", GetAbilityName(35414)), }, -- 
                [2] = { id = 35419, name = zo_strformat("<<1>>", GetAbilityName(35419)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 33357, name = zo_strformat("<<1>>", GetAbilityName(33357)), }, -- 
                [1] = { id = 36968, name = zo_strformat("<<1>>", GetAbilityName(36968)), }, -- 
                [2] = { id = 36967, name = zo_strformat("<<1>>", GetAbilityName(36967)), }, -- 
            },
            [6] = { -- Grim Focus
                [0] = { id = 61902, name = zo_strformat("<<1>>", GetAbilityName(61902)), }, -- Grim Focus
                [1] = { id = 61927, name = zo_strformat("<<1>>", GetAbilityName(61927)), }, -- Relentless Focus
                [2] = { id = 61919, name = zo_strformat("<<1>>", GetAbilityName(61919)), }, -- Merciless Resolve
            },
        },
        ["Shadow"] = { -- Shadow
            name = zo_strformat("<<1>>", GetSkillLineNameById(39)),
            [1] = { -- 
                [0] = { id = 25411, name = zo_strformat("<<1>>", GetAbilityName(25411)), }, -- 
                [1] = { id = 36493, name = zo_strformat("<<1>>", GetAbilityName(36493)), }, -- 
                [2] = { id = 36485, name = zo_strformat("<<1>>", GetAbilityName(36485)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 25255, name = zo_strformat("<<1>>", GetAbilityName(25255)), }, -- 
                [1] = { id = 25260, name = zo_strformat("<<1>>", GetAbilityName(25260)), }, -- 
                [2] = { id = 25267, name = zo_strformat("<<1>>", GetAbilityName(25267)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 25375, name = zo_strformat("<<1>>", GetAbilityName(25375)), }, -- 
                [1] = { id = 25380, name = zo_strformat("<<1>>", GetAbilityName(25380)), }, -- 
                [2] = { id = 25377, name = zo_strformat("<<1>>", GetAbilityName(25377)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 33195, name = zo_strformat("<<1>>", GetAbilityName(33195)), }, -- 
                [1] = { id = 36049, name = zo_strformat("<<1>>", GetAbilityName(36049)), }, -- 
                [2] = { id = 36028, name = zo_strformat("<<1>>", GetAbilityName(36028)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 25352, name = zo_strformat("<<1>>", GetAbilityName(25352)), }, -- 
                [1] = { id = 37470, name = zo_strformat("<<1>>", GetAbilityName(37470)), }, -- 
                [2] = { id = 37475, name = zo_strformat("<<1>>", GetAbilityName(37475)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 33211, name = zo_strformat("<<1>>", GetAbilityName(33211)), }, -- 
                [1] = { id = 35434, name = zo_strformat("<<1>>", GetAbilityName(35434)), }, -- 
                [2] = { id = 35441, name = zo_strformat("<<1>>", GetAbilityName(35441)), }, -- 
            },
        },
        ["Siphon"] = { -- Siphoning
            name = zo_strformat("<<1>>", GetSkillLineNameById(40)),
            [1] = { -- 
                [0] = { id = 25091, name = zo_strformat("<<1>>", GetAbilityName(25091)), }, -- 
                [1] = { id = 35508, name = zo_strformat("<<1>>", GetAbilityName(35508)), }, -- 
                [2] = { id = 35460, name = zo_strformat("<<1>>", GetAbilityName(35460)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 33291, name = zo_strformat("<<1>>", GetAbilityName(33291)), }, -- 
                [1] = { id = 34838, name = zo_strformat("<<1>>", GetAbilityName(34838)), }, -- 
                [2] = { id = 34835, name = zo_strformat("<<1>>", GetAbilityName(34835)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 33308, name = zo_strformat("<<1>>", GetAbilityName(33308)), }, -- 
                [1] = { id = 34721, name = zo_strformat("<<1>>", GetAbilityName(34721)), }, -- 
                [2] = { id = 34727, name = zo_strformat("<<1>>", GetAbilityName(34727)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 33326, name = zo_strformat("<<1>>", GetAbilityName(33326)), }, -- 
                [1] = { id = 36943, name = zo_strformat("<<1>>", GetAbilityName(36943)), }, -- 
                [2] = { id = 36957, name = zo_strformat("<<1>>", GetAbilityName(36957)), }, -- 
            },
            [5] = { -- Siphoning Strikes
                [0] = { id = 33319, name = zo_strformat("<<1>>", GetAbilityName(33319)), }, -- Siphoning Strikes
                [1] = { id = 36908, name = zo_strformat("<<1>>", GetAbilityName(36908)), }, -- Siphoning Attacks
                [2] = { id = 36935, name = zo_strformat("<<1>>", GetAbilityName(36935)), }, -- Leeching Strikes
            },
            [6] = { -- 
                [0] = { id = 33316, name = zo_strformat("<<1>>", GetAbilityName(33316)), }, -- Drain Power
                [1] = { id = 36901, name = zo_strformat("<<1>>", GetAbilityName(36901)), }, -- 
                [2] = { id = 36891, name = zo_strformat("<<1>>", GetAbilityName(36891)), }, -- 
            },
        },
        ["Animal"] = { -- Animal Companions
            name = zo_strformat("<<1>>", GetSkillLineNameById(127)),
            [1] = { -- 
                [0] = { id = 85982, name = zo_strformat("<<1>>", GetAbilityName(85982)), }, -- 
                [1] = { id = 85986, name = zo_strformat("<<1>>", GetAbilityName(85986)), }, -- 
                [2] = { id = 85990, name = zo_strformat("<<1>>", GetAbilityName(85990)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 85995, name = zo_strformat("<<1>>", GetAbilityName(85995)), }, -- 
                [1] = { id = 85999, name = zo_strformat("<<1>>", GetAbilityName(85999)), }, -- 
                [2] = { id = 86003, name = zo_strformat("<<1>>", GetAbilityName(86003)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 86009, name = zo_strformat("<<1>>", GetAbilityName(86009)), }, -- 
                [1] = { id = 86019, name = zo_strformat("<<1>>", GetAbilityName(86019)), }, -- 
                [2] = { id = 86015, name = zo_strformat("<<1>>", GetAbilityName(86015)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 86023, name = zo_strformat("<<1>>", GetAbilityName(86023)), }, -- 
                [1] = { id = 86027, name = zo_strformat("<<1>>", GetAbilityName(86027)), }, -- 
                [2] = { id = 86031, name = zo_strformat("<<1>>", GetAbilityName(86031)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 86050, name = zo_strformat("<<1>>", GetAbilityName(86050)), }, -- 
                [1] = { id = 86054, name = zo_strformat("<<1>>", GetAbilityName(86054)), }, -- 
                [2] = { id = 86058, name = zo_strformat("<<1>>", GetAbilityName(86058)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 86037, name = zo_strformat("<<1>>", GetAbilityName(86037)), }, -- 
                [1] = { id = 86041, name = zo_strformat("<<1>>", GetAbilityName(86041)), }, -- 
                [2] = { id = 86045, name = zo_strformat("<<1>>", GetAbilityName(86045)), }, -- 
            },
        },
        ["Green"] = { -- Green Balance
            name = zo_strformat("<<1>>", GetSkillLineNameById(128)),
            [1] = { -- 
                [0] = { id = 85532, name = zo_strformat("<<1>>", GetAbilityName(85532)), }, -- 
                [1] = { id = 85804, name = zo_strformat("<<1>>", GetAbilityName(85804)), }, -- 
                [2] = { id = 85807, name = zo_strformat("<<1>>", GetAbilityName(85807)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 85536, name = zo_strformat("<<1>>", GetAbilityName(85536)), }, -- 
                [1] = { id = 85862, name = zo_strformat("<<1>>", GetAbilityName(85862)), }, -- 
                [2] = { id = 85863, name = zo_strformat("<<1>>", GetAbilityName(85863)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 85578, name = zo_strformat("<<1>>", GetAbilityName(85578)), }, -- 
                [1] = { id = 85840, name = zo_strformat("<<1>>", GetAbilityName(85840)), }, -- 
                [2] = { id = 85845, name = zo_strformat("<<1>>", GetAbilityName(85845)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 85552, name = zo_strformat("<<1>>", GetAbilityName(85552)), }, -- 
                [1] = { id = 85850, name = zo_strformat("<<1>>", GetAbilityName(85850)), }, -- 
                [2] = { id = 85851, name = zo_strformat("<<1>>", GetAbilityName(85851)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 85539, name = zo_strformat("<<1>>", GetAbilityName(85539)), }, -- 
                [1] = { id = 85854, name = zo_strformat("<<1>>", GetAbilityName(85854)), }, -- 
                [2] = { id = 85855, name = zo_strformat("<<1>>", GetAbilityName(85855)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 85564, name = zo_strformat("<<1>>", GetAbilityName(85564)), }, -- 
                [1] = { id = 85859, name = zo_strformat("<<1>>", GetAbilityName(85859)), }, -- 
                [2] = { id = 85858, name = zo_strformat("<<1>>", GetAbilityName(85858)), }, -- 
            },
        },
        ["Winter"] = { -- Winter's Embrace
            name = zo_strformat("<<1>>", GetSkillLineNameById(129)),
            [1] = { -- 
                [0] = { id = 86109, name = zo_strformat("<<1>>", GetAbilityName(86109)), }, -- 
                [1] = { id = 86113, name = zo_strformat("<<1>>", GetAbilityName(86113)), }, -- 
                [2] = { id = 86117, name = zo_strformat("<<1>>", GetAbilityName(86117)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 86122, name = zo_strformat("<<1>>", GetAbilityName(86122)), }, -- 
                [1] = { id = 86126, name = zo_strformat("<<1>>", GetAbilityName(86126)), }, -- 
                [2] = { id = 86130, name = zo_strformat("<<1>>", GetAbilityName(86130)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 86161, name = zo_strformat("<<1>>", GetAbilityName(86161)), }, -- 
                [1] = { id = 86165, name = zo_strformat("<<1>>", GetAbilityName(86165)), }, -- 
                [2] = { id = 86169, name = zo_strformat("<<1>>", GetAbilityName(86169)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 86148, name = zo_strformat("<<1>>", GetAbilityName(86148)), }, -- 
                [1] = { id = 86152, name = zo_strformat("<<1>>", GetAbilityName(86152)), }, -- 
                [2] = { id = 86156, name = zo_strformat("<<1>>", GetAbilityName(86156)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 86135, name = zo_strformat("<<1>>", GetAbilityName(86135)), }, -- 
                [1] = { id = 86139, name = zo_strformat("<<1>>", GetAbilityName(86139)), }, -- 
                [2] = { id = 86143, name = zo_strformat("<<1>>", GetAbilityName(86143)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 86175, name = zo_strformat("<<1>>", GetAbilityName(86175)), }, -- 
                [1] = { id = 86179, name = zo_strformat("<<1>>", GetAbilityName(86179)), }, -- 
                [2] = { id = 86183, name = zo_strformat("<<1>>", GetAbilityName(86183)), }, -- 
            },
        },
        ["Grave"] = { -- Grave Lord
            name = zo_strformat("<<1>>", GetSkillLineNameById(131)),
            [1] = { -- 
                [0] = { id = 122174, name = zo_strformat("<<1>>", GetAbilityName(122174)), }, -- 
                [1] = { id = 122395, name = zo_strformat("<<1>>", GetAbilityName(122395)), }, -- 
                [2] = { id = 122388, name = zo_strformat("<<1>>", GetAbilityName(122388)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 114108, name = zo_strformat("<<1>>", GetAbilityName(114108)), }, -- 
                [1] = { id = 117624, name = zo_strformat("<<1>>", GetAbilityName(117624)), }, -- 
                [2] = { id = 117637, name = zo_strformat("<<1>>", GetAbilityName(117637)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 114860, name = zo_strformat("<<1>>", GetAbilityName(114860)), }, -- 
                [1] = { id = 117690, name = zo_strformat("<<1>>", GetAbilityName(117690)), }, -- 
                [2] = { id = 117749, name = zo_strformat("<<1>>", GetAbilityName(117749)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 115252, name = zo_strformat("<<1>>", GetAbilityName(115252)), }, -- 
                [1] = { id = 117805, name = zo_strformat("<<1>>", GetAbilityName(117805)), }, -- 
                [2] = { id = 117850, name = zo_strformat("<<1>>", GetAbilityName(117850)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 114317, name = zo_strformat("<<1>>", GetAbilityName(114317)), }, -- 
                [1] = { id = 118680, name = zo_strformat("<<1>>", GetAbilityName(118680)), }, -- 
                [2] = { id = 118726, name = zo_strformat("<<1>>", GetAbilityName(118726)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 115924, name = zo_strformat("<<1>>", GetAbilityName(115924)), }, -- 
                [1] = { id = 118763, name = zo_strformat("<<1>>", GetAbilityName(118763)), }, -- 
                [2] = { id = 118008, name = zo_strformat("<<1>>", GetAbilityName(118008)), }, -- 
            },
        },
        ["Bone"] = { -- Bone Tyrant
            name = zo_strformat("<<1>>", GetSkillLineNameById(132)),
            [1] = { -- 
                [0] = { id = 115001, name = zo_strformat("<<1>>", GetAbilityName(115001)), }, -- 
                [1] = { id = 118664, name = zo_strformat("<<1>>", GetAbilityName(118664)), }, -- 
                [2] = { id = 118279, name = zo_strformat("<<1>>", GetAbilityName(118279)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 115115, name = zo_strformat("<<1>>", GetAbilityName(115115)), }, -- 
                [1] = { id = 118226, name = zo_strformat("<<1>>", GetAbilityName(118226)), }, -- 
                [2] = { id = 118223, name = zo_strformat("<<1>>", GetAbilityName(118223)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 115206, name = zo_strformat("<<1>>", GetAbilityName(115206)), }, -- 
                [1] = { id = 118237, name = zo_strformat("<<1>>", GetAbilityName(118237)), }, -- 
                [2] = { id = 118244, name = zo_strformat("<<1>>", GetAbilityName(118244)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 115238, name = zo_strformat("<<1>>", GetAbilityName(115238)), }, -- 
                [1] = { id = 118623, name = zo_strformat("<<1>>", GetAbilityName(118623)), }, -- 
                [2] = { id = 118639, name = zo_strformat("<<1>>", GetAbilityName(118639)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 115093, name = zo_strformat("<<1>>", GetAbilityName(115093)), }, -- 
                [1] = { id = 118380, name = zo_strformat("<<1>>", GetAbilityName(118380)), }, -- 
                [2] = { id = 118404, name = zo_strformat("<<1>>", GetAbilityName(118404)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 115177, name = zo_strformat("<<1>>", GetAbilityName(115177)), }, -- 
                [1] = { id = 118308, name = zo_strformat("<<1>>", GetAbilityName(118308)), }, -- 
                [2] = { id = 118352, name = zo_strformat("<<1>>", GetAbilityName(118352)), }, -- 
            },
        },
        ["Living"] = { -- Living Death
            name = zo_strformat("<<1>>", GetSkillLineNameById(133)),
            [1] = { -- 
                [0] = { id = 115410, name = zo_strformat("<<1>>", GetAbilityName(115410)), }, -- 
                [1] = { id = 118367, name = zo_strformat("<<1>>", GetAbilityName(118367)), }, -- 
                [2] = { id = 118379, name = zo_strformat("<<1>>", GetAbilityName(118379)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 114196, name = zo_strformat("<<1>>", GetAbilityName(114196)), }, -- 
                [1] = { id = 117883, name = zo_strformat("<<1>>", GetAbilityName(117883)), }, -- 
                [2] = { id = 117888, name = zo_strformat("<<1>>", GetAbilityName(117888)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 115307, name = zo_strformat("<<1>>", GetAbilityName(115307)), }, -- 
                [1] = { id = 117940, name = zo_strformat("<<1>>", GetAbilityName(117940)), }, -- 
                [2] = { id = 117919, name = zo_strformat("<<1>>", GetAbilityName(117919)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 115315, name = zo_strformat("<<1>>", GetAbilityName(115315)), }, -- 
                [1] = { id = 118017, name = zo_strformat("<<1>>", GetAbilityName(118017)), }, -- 
                [2] = { id = 118809, name = zo_strformat("<<1>>", GetAbilityName(118809)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 115710, name = zo_strformat("<<1>>", GetAbilityName(115710)), }, -- 
                [1] = { id = 118912, name = zo_strformat("<<1>>", GetAbilityName(118912)), }, -- 
                [2] = { id = 118840, name = zo_strformat("<<1>>", GetAbilityName(118840)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 115926, name = zo_strformat("<<1>>", GetAbilityName(115926)), }, -- 
                [1] = { id = 118070, name = zo_strformat("<<1>>", GetAbilityName(118070)), }, -- 
                [2] = { id = 118122, name = zo_strformat("<<1>>", GetAbilityName(118122)), }, -- 
            },
        },
        ["Spear"] = { -- Aedric Spear
            name = zo_strformat("<<1>>", GetSkillLineNameById(22)),
            [1] = { -- 
                [0] = { id = 22138, name = zo_strformat("<<1>>", GetAbilityName(22138)), }, -- 
                [1] = { id = 22144, name = zo_strformat("<<1>>", GetAbilityName(22144)), }, -- 
                [2] = { id = 22139, name = zo_strformat("<<1>>", GetAbilityName(22139)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 26114, name = zo_strformat("<<1>>", GetAbilityName(26114)), }, -- 
                [1] = { id = 26792, name = zo_strformat("<<1>>", GetAbilityName(26792)), }, -- 
                [2] = { id = 26797, name = zo_strformat("<<1>>", GetAbilityName(26797)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 26158, name = zo_strformat("<<1>>", GetAbilityName(26158)), }, -- 
                [1] = { id = 26800, name = zo_strformat("<<1>>", GetAbilityName(26800)), }, -- 
                [2] = { id = 26804, name = zo_strformat("<<1>>", GetAbilityName(26804)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 22149, name = zo_strformat("<<1>>", GetAbilityName(22149)), }, -- 
                [1] = { id = 22161, name = zo_strformat("<<1>>", GetAbilityName(22161)), }, -- 
                [2] = { id = 15540, name = zo_strformat("<<1>>", GetAbilityName(15540)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 26188, name = zo_strformat("<<1>>", GetAbilityName(26188)), }, -- 
                [1] = { id = 26858, name = zo_strformat("<<1>>", GetAbilityName(26858)), }, -- 
                [2] = { id = 26869, name = zo_strformat("<<1>>", GetAbilityName(26869)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 22178, name = zo_strformat("<<1>>", GetAbilityName(22178)), }, -- 
                [1] = { id = 22182, name = zo_strformat("<<1>>", GetAbilityName(22182)), }, -- 
                [2] = { id = 22180, name = zo_strformat("<<1>>", GetAbilityName(22180)), }, -- 
            },
        },
        ["Dawn"] = { -- Dawn's Wrath
            name = zo_strformat("<<1>>", GetSkillLineNameById(27)),
            [1] = { -- 
                [0] = { id = 21752, name = zo_strformat("<<1>>", GetAbilityName(21752)), }, -- 
                [1] = { id = 21755, name = zo_strformat("<<1>>", GetAbilityName(21755)), }, -- 
                [2] = { id = 21758, name = zo_strformat("<<1>>", GetAbilityName(21758)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 21726, name = zo_strformat("<<1>>", GetAbilityName(21726)), }, -- 
                [1] = { id = 21729, name = zo_strformat("<<1>>", GetAbilityName(21729)), }, -- 
                [2] = { id = 21732, name = zo_strformat("<<1>>", GetAbilityName(21732)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 22057, name = zo_strformat("<<1>>", GetAbilityName(22057)), }, -- 
                [1] = { id = 22110, name = zo_strformat("<<1>>", GetAbilityName(22110)), }, -- 
                [2] = { id = 22095, name = zo_strformat("<<1>>", GetAbilityName(22095)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 21761, name = zo_strformat("<<1>>", GetAbilityName(21761)), }, -- 
                [1] = { id = 21765, name = zo_strformat("<<1>>", GetAbilityName(21765)), }, -- 
                [2] = { id = 21763, name = zo_strformat("<<1>>", GetAbilityName(21763)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 21776, name = zo_strformat("<<1>>", GetAbilityName(21776)), }, -- 
                [1] = { id = 22006, name = zo_strformat("<<1>>", GetAbilityName(22006)), }, -- 
                [2] = { id = 22004, name = zo_strformat("<<1>>", GetAbilityName(22004)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 63029, name = zo_strformat("<<1>>", GetAbilityName(63029)), }, -- 
                [1] = { id = 63044, name = zo_strformat("<<1>>", GetAbilityName(63044)), }, -- 
                [2] = { id = 63046, name = zo_strformat("<<1>>", GetAbilityName(63046)), }, -- 
            },
        },
        ["Resto"] = { -- Restoring Light
            name = zo_strformat("<<1>>", GetSkillLineNameById(28)),
            [1] = { -- 
                [0] = { id = 22223, name = zo_strformat("<<1>>", GetAbilityName(22223)), }, -- 
                [1] = { id = 22229, name = zo_strformat("<<1>>", GetAbilityName(22229)), }, -- 
                [2] = { id = 22226, name = zo_strformat("<<1>>", GetAbilityName(22226)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 22250, name = zo_strformat("<<1>>", GetAbilityName(22250)), }, -- 
                [1] = { id = 22253, name = zo_strformat("<<1>>", GetAbilityName(22253)), }, -- 
                [2] = { id = 22256, name = zo_strformat("<<1>>", GetAbilityName(22256)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 22304, name = zo_strformat("<<1>>", GetAbilityName(22304)), }, -- 
                [1] = { id = 22327, name = zo_strformat("<<1>>", GetAbilityName(22327)), }, -- 
                [2] = { id = 22314, name = zo_strformat("<<1>>", GetAbilityName(22314)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 26209, name = zo_strformat("<<1>>", GetAbilityName(26209)), }, -- 
                [1] = { id = 26807, name = zo_strformat("<<1>>", GetAbilityName(26807)), }, -- 
                [2] = { id = 26821, name = zo_strformat("<<1>>", GetAbilityName(26821)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 22265, name = zo_strformat("<<1>>", GetAbilityName(22265)), }, -- 
                [1] = { id = 22259, name = zo_strformat("<<1>>", GetAbilityName(22259)), }, -- 
                [2] = { id = 22262, name = zo_strformat("<<1>>", GetAbilityName(22262)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 22234, name = zo_strformat("<<1>>", GetAbilityName(22234)), }, -- 
                [1] = { id = 22240, name = zo_strformat("<<1>>", GetAbilityName(22240)), }, -- 
                [2] = { id = 22237, name = zo_strformat("<<1>>", GetAbilityName(22237)), }, -- 
            },
        },
        ["Herald"] = { -- Herald of the Tome
            name = zo_strformat("<<1>>", GetSkillLineNameById(218)),
            [1] = { -- 
                [0] = { id = 189791, name = zo_strformat("<<1>>", GetAbilityName(189791)), }, -- The Unblinking Eye
                [1] = { id = 189837, name = zo_strformat("<<1>>", GetAbilityName(189837)), }, -- The Tide King's Gaze
                [2] = { id = 189867, name = zo_strformat("<<1>>", GetAbilityName(189867)), }, -- The Languid Eye
            },
            [2] = { -- 
                [0] = { id = 185794, name = zo_strformat("<<1>>", GetAbilityName(185794)), }, -- Runeblades
                [1] = { id = 185803, name = zo_strformat("<<1>>", GetAbilityName(185803)), }, -- Writhing Runeblades
                [2] = { id = 182977, name = zo_strformat("<<1>>", GetAbilityName(182977)), }, -- Escalating Runeblades
            },
            [3] = { -- 
                [0] = { id = 185805, name = zo_strformat("<<1>>", GetAbilityName(185805)), }, -- Fatecarver
                [1] = { id = 183122, name = zo_strformat("<<1>>", GetAbilityName(183122)), }, -- Exhausting Fatecarver
                [2] = { id = 186366, name = zo_strformat("<<1>>", GetAbilityName(186366)), }, -- Pragmatic Fatecarver
            },
            [4] = { -- 
                [0] = { id = 185817, name = zo_strformat("<<1>>", GetAbilityName(185817)), }, -- Abyssal Impact
                [1] = { id = 183006, name = zo_strformat("<<1>>", GetAbilityName(183006)), }, -- Cephaliarch's Flail
                [2] = { id = 185823, name = zo_strformat("<<1>>", GetAbilityName(185823)), }, -- Tentacular Dread
            },
            [5] = { -- 
                [0] = { id = 186452, name = zo_strformat("<<1>>", GetAbilityName(186452)), }, -- Tome-Bearer's Inspiration
                [1] = { id = 185842, name = zo_strformat("<<1>>", GetAbilityName(185842)), }, -- Inspired Scholarship
                [2] = { id = 183047, name = zo_strformat("<<1>>", GetAbilityName(183047)), }, -- Recuperative Treatise
            },
            [6] = { -- 
                [0] = { id = 185836, name = zo_strformat("<<1>>", GetAbilityName(185836)), }, -- The Imperfect Ring
                [1] = { id = 185839, name = zo_strformat("<<1>>", GetAbilityName(185839)), }, -- Rune of Displacement
                [2] = { id = 182988, name = zo_strformat("<<1>>", GetAbilityName(182988)), }, -- Fulminating Rune
            },
        },
        ["Soldier"] = { -- Soldier of Apocrypha
            name = zo_strformat("<<1>>", GetSkillLineNameById(219)),
            [1] = { -- 
                [0] = { id = 183676, name = zo_strformat("<<1>>", GetAbilityName(183676)), }, -- Gibbering Shield
                [1] = { id = 192372, name = zo_strformat("<<1>>", GetAbilityName(192372)), }, -- Sanctum of the Abyssal Sea
                [2] = { id = 192380, name = zo_strformat("<<1>>", GetAbilityName(192380)), }, -- Gibbering Shelter
            },
            [2] = { -- 
                [0] = { id = 183165, name = zo_strformat("<<1>>", GetAbilityName(183165)), }, -- Runic Jolt
                [1] = { id = 183430, name = zo_strformat("<<1>>", GetAbilityName(183430)), }, -- Runic Sunder
                [2] = { id = 186531, name = zo_strformat("<<1>>", GetAbilityName(186531)), }, -- Runic Embrace
            },
            [3] = { -- 
                [0] = { id = 185894, name = zo_strformat("<<1>>", GetAbilityName(185894)), }, -- Runespite Ward
                [1] = { id = 185901, name = zo_strformat("<<1>>", GetAbilityName(185901)), }, -- Spiteward of the Lucid Mind
                [2] = { id = 183241, name = zo_strformat("<<1>>", GetAbilityName(183241)), }, -- Impervious Runeward
            },
            [4] = { -- 
                [0] = { id = 183648, name = zo_strformat("<<1>>", GetAbilityName(183648)), }, -- Fatewoven Armor
                [1] = { id = 185908, name = zo_strformat("<<1>>", GetAbilityName(185908)), }, -- Cruxweaver Armor
                [2] = { id = 186477, name = zo_strformat("<<1>>", GetAbilityName(186477)), }, -- Unbreakable Fate
            },
            [5] = { -- 
                [0] = { id = 185912, name = zo_strformat("<<1>>", GetAbilityName(185912)), }, -- Runic Defense
                [1] = { id = 183401, name = zo_strformat("<<1>>", GetAbilityName(183401)), }, -- Runeguard of Still Waters
                [2] = { id = 186489, name = zo_strformat("<<1>>", GetAbilityName(186489)), }, -- Runeguard of Freedom
            },
            [6] = { -- 
                [0] = { id = 185918, name = zo_strformat("<<1>>", GetAbilityName(185918)), }, -- Rune of Eldritch Horror
                [1] = { id = 185921, name = zo_strformat("<<1>>", GetAbilityName(185921)), }, -- Rune of Uncanny Adoration
                [2] = { id = 183267, name = zo_strformat("<<1>>", GetAbilityName(183267)), }, -- Rune of the Colorless Pool
            },
        },
        ["Curative"] = { -- Curative Runeforms
            name = zo_strformat("<<1>>", GetSkillLineNameById(220)),
            [1] = { -- 
                [0] = { id = 183709, name = zo_strformat("<<1>>", GetAbilityName(183709)), }, -- Vitalizing Glyphic
                [1] = { id = 193794, name = zo_strformat("<<1>>", GetAbilityName(193794)), }, -- Glyphic of the Tides
                [2] = { id = 193558, name = zo_strformat("<<1>>", GetAbilityName(193558)), }, -- Resonating Glyphic
            },
            [2] = { -- 
                [0] = { id = 183261, name = zo_strformat("<<1>>", GetAbilityName(183261)), }, -- Runemend
                [1] = { id = 186189, name = zo_strformat("<<1>>", GetAbilityName(186189)), }, -- Evolving Runemend
                [2] = { id = 186191, name = zo_strformat("<<1>>", GetAbilityName(186191)), }, -- Audacious Runemend
            },
            [3] = { -- 
                [0] = { id = 183537, name = zo_strformat("<<1>>", GetAbilityName(183537)), }, -- Remedy Cascade
                [1] = { id = 186193, name = zo_strformat("<<1>>", GetAbilityName(186193)), }, -- Cascading Fortune
                [2] = { id = 186200, name = zo_strformat("<<1>>", GetAbilityName(186200)), }, -- Curative Surge
            },
            [4] = { -- 
                [0] = { id = 183447, name = zo_strformat("<<1>>", GetAbilityName(183447)), }, -- Chakram Shields
                [1] = { id = 186207, name = zo_strformat("<<1>>", GetAbilityName(186207)), }, -- Chakram of Destiny
                [2] = { id = 186209, name = zo_strformat("<<1>>", GetAbilityName(186209)), }, -- Tidal Chakram
            },
            [5] = { -- 
                [0] = { id = 183555, name = zo_strformat("<<1>>", GetAbilityName(183555)), }, -- Arcanist's Domain
                [1] = { id = 186229, name = zo_strformat("<<1>>", GetAbilityName(186229)), }, -- Zenas' Empowering Disc
                [2] = { id = 186234, name = zo_strformat("<<1>>", GetAbilityName(186234)), }, -- Reconstructive Domain
            },
            [6] = { -- 
                [0] = { id = 183542, name = zo_strformat("<<1>>", GetAbilityName(183542)), }, -- Apocryphal Gate
                [1] = { id = 186211, name = zo_strformat("<<1>>", GetAbilityName(186211)), }, -- Fleet-footed Gate
                [2] = { id = 186220, name = zo_strformat("<<1>>", GetAbilityName(186220)), }, -- Passage Between Worlds
            },
        },
    },
    ["weapon"] = {
        [1] = { -- Two Handed
            name = zo_strformat("<<1>>", GetSkillLineNameById(30)),
            [1] = { -- 
                [0] = { id = 83216, name = zo_strformat("<<1>>", GetAbilityName(83216)), }, -- 
                [1] = { id = 83229, name = zo_strformat("<<1>>", GetAbilityName(83229)), }, -- 
                [2] = { id = 83238, name = zo_strformat("<<1>>", GetAbilityName(83238)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 28279, name = zo_strformat("<<1>>", GetAbilityName(28279)), }, -- 
                [1] = { id = 38814, name = zo_strformat("<<1>>", GetAbilityName(38814)), }, -- 
                [2] = { id = 38807, name = zo_strformat("<<1>>", GetAbilityName(38807)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 28448, name = zo_strformat("<<1>>", GetAbilityName(28448)), }, -- 
                [1] = { id = 38788, name = zo_strformat("<<1>>", GetAbilityName(38788)), }, -- 
                [2] = { id = 38778, name = zo_strformat("<<1>>", GetAbilityName(38778)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 20919, name = zo_strformat("<<1>>", GetAbilityName(20919)), }, -- 
                [1] = { id = 38745, name = zo_strformat("<<1>>", GetAbilityName(38745)), }, -- 
                [2] = { id = 38754, name = zo_strformat("<<1>>", GetAbilityName(38754)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 28302, name = zo_strformat("<<1>>", GetAbilityName(28302)), }, -- 
                [1] = { id = 38823, name = zo_strformat("<<1>>", GetAbilityName(38823)), }, -- 
                [2] = { id = 38819, name = zo_strformat("<<1>>", GetAbilityName(38819)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 28297, name = zo_strformat("<<1>>", GetAbilityName(28297)), }, -- 
                [1] = { id = 38794, name = zo_strformat("<<1>>", GetAbilityName(38794)), }, -- 
                [2] = { id = 38802, name = zo_strformat("<<1>>", GetAbilityName(38802)), }, -- 
            },
        },
        [2] = { -- One Hand and Shield
            name = zo_strformat("<<1>>", GetSkillLineNameById(29)),
            [1] = { -- 
                [0] = { id = 83272, name = zo_strformat("<<1>>", GetAbilityName(83272)), }, -- 
                [1] = { id = 83292, name = zo_strformat("<<1>>", GetAbilityName(83292)), }, -- 
                [2] = { id = 83310, name = zo_strformat("<<1>>", GetAbilityName(83310)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 28306, name = zo_strformat("<<1>>", GetAbilityName(28306)), }, -- 
                [1] = { id = 38256, name = zo_strformat("<<1>>", GetAbilityName(38256)), }, -- 
                [2] = { id = 38250, name = zo_strformat("<<1>>", GetAbilityName(38250)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 28304, name = zo_strformat("<<1>>", GetAbilityName(28304)), }, -- 
                [1] = { id = 38268, name = zo_strformat("<<1>>", GetAbilityName(38268)), }, -- 
                [2] = { id = 38264, name = zo_strformat("<<1>>", GetAbilityName(38264)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 28727, name = zo_strformat("<<1>>", GetAbilityName(28727)), }, -- 
                [1] = { id = 38312, name = zo_strformat("<<1>>", GetAbilityName(38312)), }, -- 
                [2] = { id = 38317, name = zo_strformat("<<1>>", GetAbilityName(38317)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 28719, name = zo_strformat("<<1>>", GetAbilityName(28719)), }, -- 
                [1] = { id = 38401, name = zo_strformat("<<1>>", GetAbilityName(38401)), }, -- 
                [2] = { id = 38405, name = zo_strformat("<<1>>", GetAbilityName(38405)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 28365, name = zo_strformat("<<1>>", GetAbilityName(28365)), }, -- 
                [1] = { id = 38455, name = zo_strformat("<<1>>", GetAbilityName(38455)), }, -- 
                [2] = { id = 38452, name = zo_strformat("<<1>>", GetAbilityName(38452)), }, -- 
            },
        },
        [3] = { -- Dual Wield
            name = zo_strformat("<<1>>", GetSkillLineNameById(31)),
            [1] = { -- 
                [0] = { id = 83600, name = zo_strformat("<<1>>", GetAbilityName(83600)), }, -- 
                [1] = { id = 85187, name = zo_strformat("<<1>>", GetAbilityName(85187)), }, -- 
                [2] = { id = 85179, name = zo_strformat("<<1>>", GetAbilityName(85179)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 28607, name = zo_strformat("<<1>>", GetAbilityName(28607)), }, -- 
                [1] = { id = 38857, name = zo_strformat("<<1>>", GetAbilityName(38857)), }, -- 
                [2] = { id = 38846, name = zo_strformat("<<1>>", GetAbilityName(38846)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 28379, name = zo_strformat("<<1>>", GetAbilityName(28379)), }, -- 
                [1] = { id = 38839, name = zo_strformat("<<1>>", GetAbilityName(38839)), }, -- 
                [2] = { id = 38845, name = zo_strformat("<<1>>", GetAbilityName(38845)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 28591, name = zo_strformat("<<1>>", GetAbilityName(28591)), }, -- 
                [1] = { id = 38891, name = zo_strformat("<<1>>", GetAbilityName(38891)), }, -- 
                [2] = { id = 38861, name = zo_strformat("<<1>>", GetAbilityName(38861)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 28613, name = zo_strformat("<<1>>", GetAbilityName(28613)), }, -- 
                [1] = { id = 38901, name = zo_strformat("<<1>>", GetAbilityName(38901)), }, -- 
                [2] = { id = 38906, name = zo_strformat("<<1>>", GetAbilityName(38906)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 21157, name = zo_strformat("<<1>>", GetAbilityName(21157)), }, -- 
                [1] = { id = 38914, name = zo_strformat("<<1>>", GetAbilityName(38914)), }, -- 
                [2] = { id = 38910, name = zo_strformat("<<1>>", GetAbilityName(38910)), }, -- 
            },
        },
        [4] = { -- Bow
            name = zo_strformat("<<1>>", GetSkillLineNameById(32)),
            [1] = { -- 
                [0] = { id = 83465, name = zo_strformat("<<1>>", GetAbilityName(83465)), }, -- 
                [1] = { id = 85257, name = zo_strformat("<<1>>", GetAbilityName(85257)), }, -- 
                [2] = { id = 85451, name = zo_strformat("<<1>>", GetAbilityName(85451)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 28882, name = zo_strformat("<<1>>", GetAbilityName(28882)), }, -- 
                [1] = { id = 38685, name = zo_strformat("<<1>>", GetAbilityName(38685)), }, -- 
                [2] = { id = 38687, name = zo_strformat("<<1>>", GetAbilityName(38687)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 28876, name = zo_strformat("<<1>>", GetAbilityName(28876)), }, -- 
                [1] = { id = 38689, name = zo_strformat("<<1>>", GetAbilityName(38689)), }, -- 
                [2] = { id = 38695, name = zo_strformat("<<1>>", GetAbilityName(38695)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 28879, name = zo_strformat("<<1>>", GetAbilityName(28879)), }, -- 
                [1] = { id = 38672, name = zo_strformat("<<1>>", GetAbilityName(38672)), }, -- 
                [2] = { id = 38669, name = zo_strformat("<<1>>", GetAbilityName(38669)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 31271, name = zo_strformat("<<1>>", GetAbilityName(31271)), }, -- 
                [1] = { id = 38705, name = zo_strformat("<<1>>", GetAbilityName(38705)), }, -- 
                [2] = { id = 38701, name = zo_strformat("<<1>>", GetAbilityName(38701)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 28869, name = zo_strformat("<<1>>", GetAbilityName(28869)), }, -- 
                [1] = { id = 38645, name = zo_strformat("<<1>>", GetAbilityName(38645)), }, -- 
                [2] = { id = 38660, name = zo_strformat("<<1>>", GetAbilityName(38660)), }, -- 
            },
        },
        [5] = { -- Destruction Staff
            name = zo_strformat("<<1>>", GetSkillLineNameById(33)),
            [1] = { -- Elemental Storm
                [0] = { id = 83619, name = zo_strformat("<<1>>", GetAbilityName(83619)), id1 = 83625, id2 = 83628, id3 = 83630, }, -- Elemental Storm - 83625 (flame) 83628 (frost) 83630 (shock)
                [1] = { id = 84434, name = zo_strformat("<<1>>", GetAbilityName(84434)), id1 = 85126, id2 = 85128, id3 = 85130, }, -- Elemental Rage - 85126 (flame) 85128 (frost) 85130 (shock)
                [2] = { id = 83642, name = zo_strformat("<<1>>", GetAbilityName(83642)), id1 = 83682, id2 = 83684, id3 = 83686, }, -- Eye of the Storm - 83682 (flame) 83684 (frost) 83686 (shock)
            },
            [2] = { -- Force Shock
                [0] = { id = 46340, name = zo_strformat("<<1>>", GetAbilityName(46340)), }, -- Force Shock
                [1] = { id = 46348, name = zo_strformat("<<1>>", GetAbilityName(46348)), }, -- Crushing Shock
                [2] = { id = 46356, name = zo_strformat("<<1>>", GetAbilityName(46356)), }, -- Force Pulse
            },
            [3] = { -- Wall of Elements
                [0] = { id = 28858, name = zo_strformat("<<1>>", GetAbilityName(28858)), id1 = 28807, id2 = 28849, id3 = 28854, }, -- Wall of Elements - 28807 (flame) 28849 (frost) 28854 (shock)
                [1] = { id = 39052, name = zo_strformat("<<1>>", GetAbilityName(39052)), id1 = 39053, id2 = 39067, id3 = 39073, }, -- Unstable Wall of Elements - 39053 (flame) 39067 (frost) 39073 (storm)
                [2] = { id = 39011, name = zo_strformat("<<1>>", GetAbilityName(39011)), id1 = 39012, id2 = 39028, id3 = 39018, }, -- Elemental Blockade - 39012 (flame) 39028 (frost) 39018 (shock)
            },
            [4] = { -- Destructive Touch
                [0] = { id = 29091, name = zo_strformat("<<1>>", GetAbilityName(29091)), id1 = 29073, id2 = 29078, id3 = 29089, }, -- Destructive Touch - 29073 (flame) 29078 (frost) 29089 (shock)
                [1] = { id = 38984, name = zo_strformat("<<1>>", GetAbilityName(38984)), id1 = 38985, id2 = 38989, id3 = 38993, }, -- Destructive Clench - 38985 (flame) 38989 (frost) 38993 (shock)
                [2] = { id = 38937, name = zo_strformat("<<1>>", GetAbilityName(38937)), id1 = 38944, id2 = 38970, id3 = 38978, }, -- Destructive Reach - 38944 (flame) 38970 (frost) 38978 (shock)
            },
            [5] = { -- Weakness to Elements
                [0] = { id = 29173, name = zo_strformat("<<1>>", GetAbilityName(29173)), }, -- Weakness to Elements
                [1] = { id = 39089, name = zo_strformat("<<1>>", GetAbilityName(39089)), }, -- Elemental Susceptibility
                [2] = { id = 39095, name = zo_strformat("<<1>>", GetAbilityName(39095)), }, -- Elemental Drain
            },
            [6] = { -- Impulse
                [0] = { id = 28800, name = zo_strformat("<<1>>", GetAbilityName(28800)), id1 = 28794, id2 = 28798, id3 = 28799, }, -- Impulse - 28794 (flame) 28798 (frost) 28799 (shock)
                [1] = { id = 39143, name = zo_strformat("<<1>>", GetAbilityName(39143)), id1 = 39145, id2 = 39146, id3 = 39147, }, -- Elemental Ring - 39145 (flame) 39146 (frost) 39147 (shock)
                [2] = { id = 39161, name = zo_strformat("<<1>>", GetAbilityName(39161)), id1 = 39162, id2 = 39163, id3 = 39167, }, -- Pulsar - 39162 (flame) 39163 (frost) 39167 (shock)
            },
        },
        [6] = { -- Restoration Staff
            name = zo_strformat("<<1>>", GetSkillLineNameById(34)),
            [1] = { -- 
                [0] = { id = 83552, name = zo_strformat("<<1>>", GetAbilityName(83552)), }, -- 
                [1] = { id = 83850, name = zo_strformat("<<1>>", GetAbilityName(83850)), }, -- 
                [2] = { id = 85132, name = zo_strformat("<<1>>", GetAbilityName(85132)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 28385, name = zo_strformat("<<1>>", GetAbilityName(28385)), }, -- 
                [1] = { id = 40058, name = zo_strformat("<<1>>", GetAbilityName(40058)), }, -- 
                [2] = { id = 40060, name = zo_strformat("<<1>>", GetAbilityName(40060)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 28536, name = zo_strformat("<<1>>", GetAbilityName(28536)), }, -- 
                [1] = { id = 40076, name = zo_strformat("<<1>>", GetAbilityName(40076)), }, -- 
                [2] = { id = 40079, name = zo_strformat("<<1>>", GetAbilityName(40079)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 37243, name = zo_strformat("<<1>>", GetAbilityName(37243)), }, -- 
                [1] = { id = 40103, name = zo_strformat("<<1>>", GetAbilityName(40103)), }, -- 
                [2] = { id = 40094, name = zo_strformat("<<1>>", GetAbilityName(40094)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 37232, name = zo_strformat("<<1>>", GetAbilityName(37232)), }, -- 
                [1] = { id = 40130, name = zo_strformat("<<1>>", GetAbilityName(40130)), }, -- 
                [2] = { id = 40126, name = zo_strformat("<<1>>", GetAbilityName(40126)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 31531, name = zo_strformat("<<1>>", GetAbilityName(31531)), }, -- 
                [1] = { id = 40109, name = zo_strformat("<<1>>", GetAbilityName(40109)), }, -- 
                [2] = { id = 40116, name = zo_strformat("<<1>>", GetAbilityName(40116)), }, -- 
            },
        },
    },
    ["armor"] = {
        [1] = { -- Light Armor
            name = zo_strformat("<<1>>", GetSkillLineNameById(24)),
            [1] = { -- 
                [0] = { id = 29338, name = zo_strformat("<<1>>", GetAbilityName(29338)), }, -- 
                [1] = { id = 39186, name = zo_strformat("<<1>>", GetAbilityName(39186)), }, -- 
                [2] = { id = 39182, name = zo_strformat("<<1>>", GetAbilityName(39182)), }, -- 
            },
        },
        [2] = { -- Medium Armor
            name = zo_strformat("<<1>>", GetSkillLineNameById(25)),
            [1] = { -- 
                [0] = { id = 29556, name = zo_strformat("<<1>>", GetAbilityName(29556)), }, -- 
                [1] = { id = 39195, name = zo_strformat("<<1>>", GetAbilityName(39195)), }, -- 
                [2] = { id = 39192, name = zo_strformat("<<1>>", GetAbilityName(39192)), }, -- 
            },
        },
        [3] = { -- Heavy Armor
            name = zo_strformat("<<1>>", GetSkillLineNameById(26)),
            [1] = { -- 
                [0] = { id = 29552, name = zo_strformat("<<1>>", GetAbilityName(29552)), }, -- 
                [1] = { id = 39205, name = zo_strformat("<<1>>", GetAbilityName(39205)), }, -- 
                [2] = { id = 39197, name = zo_strformat("<<1>>", GetAbilityName(39197)), }, -- 
            },
        },
    },
    ["world"] = {
        [4] = { -- Soul Magic
            name = zo_strformat("<<1>>", GetSkillLineNameById(72)),
            [1] = { -- 
                [0] = { id = 39270, name = zo_strformat("<<1>>", GetAbilityName(39270)), }, -- 
                [1] = { id = 40420, name = zo_strformat("<<1>>", GetAbilityName(40420)), }, -- 
                [2] = { id = 40414, name = zo_strformat("<<1>>", GetAbilityName(40414)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 26768, name = zo_strformat("<<1>>", GetAbilityName(26768)), }, -- 
                [1] = { id = 40328, name = zo_strformat("<<1>>", GetAbilityName(40328)), }, -- 
                [2] = { id = 40317, name = zo_strformat("<<1>>", GetAbilityName(40317)), }, -- 
            },
        },
        [5] = { -- Vampire
            name = zo_strformat("<<1>>", GetSkillLineNameById(51)),
            [1] = { -- 
                [0] = { id = 32624, name = zo_strformat("<<1>>", GetAbilityName(32624)), }, -- 
                [1] = { id = 38932, name = zo_strformat("<<1>>", GetAbilityName(38932)), }, -- 
                [2] = { id = 38931, name = zo_strformat("<<1>>", GetAbilityName(38931)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 32893, name = zo_strformat("<<1>>", GetAbilityName(32893)), }, -- 
                [1] = { id = 38949, name = zo_strformat("<<1>>", GetAbilityName(38949)), }, -- 
                [2] = { id = 38956, name = zo_strformat("<<1>>", GetAbilityName(38956)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 132141, name = zo_strformat("<<1>>", GetAbilityName(132141)), }, -- 
                [1] = { id = 134160, name = zo_strformat("<<1>>", GetAbilityName(134160)), }, -- 
                [2] = { id = 135841, name = zo_strformat("<<1>>", GetAbilityName(135841)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 134583, name = zo_strformat("<<1>>", GetAbilityName(134583)), }, -- 
                [1] = { id = 135905, name = zo_strformat("<<1>>", GetAbilityName(135905)), }, -- 
                [2] = { id = 137259, name = zo_strformat("<<1>>", GetAbilityName(137259)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 128709, name = zo_strformat("<<1>>", GetAbilityName(128709)), }, -- 
                [1] = { id = 137861, name = zo_strformat("<<1>>", GetAbilityName(137861)), }, -- 
                [2] = { id = 138097, name = zo_strformat("<<1>>", GetAbilityName(138097)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 32986, name = zo_strformat("<<1>>", GetAbilityName(32986)), }, -- 
                [1] = { id = 38963, name = zo_strformat("<<1>>", GetAbilityName(38963)), }, -- 
                [2] = { id = 38965, name = zo_strformat("<<1>>", GetAbilityName(38965)), }, -- 
            },
        },
        [6] = { -- Werewolf
            name = zo_strformat("<<1>>", GetSkillLineNameById(50)),
            [1] = { -- 
                [0] = { id = 32455, name = zo_strformat("<<1>>", GetAbilityName(32455)), }, -- 
                [1] = { id = 39075, name = zo_strformat("<<1>>", GetAbilityName(39075)), }, -- 
                [2] = { id = 39076, name = zo_strformat("<<1>>", GetAbilityName(39076)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 32632, name = zo_strformat("<<1>>", GetAbilityName(32632)), }, -- 
                [1] = { id = 39105, name = zo_strformat("<<1>>", GetAbilityName(39105)), }, -- 
                [2] = { id = 39104, name = zo_strformat("<<1>>", GetAbilityName(39104)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 58310, name = zo_strformat("<<1>>", GetAbilityName(58310)), }, -- 
                [1] = { id = 58317, name = zo_strformat("<<1>>", GetAbilityName(58317)), }, -- 
                [2] = { id = 58325, name = zo_strformat("<<1>>", GetAbilityName(58325)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 32633, name = zo_strformat("<<1>>", GetAbilityName(32633)), }, -- 
                [1] = { id = 39113, name = zo_strformat("<<1>>", GetAbilityName(39113)), }, -- 
                [2] = { id = 39114, name = zo_strformat("<<1>>", GetAbilityName(39114)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 58405, name = zo_strformat("<<1>>", GetAbilityName(58405)), }, -- 
                [1] = { id = 58742, name = zo_strformat("<<1>>", GetAbilityName(58742)), }, -- 
                [2] = { id = 58798, name = zo_strformat("<<1>>", GetAbilityName(58798)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 58855, name = zo_strformat("<<1>>", GetAbilityName(58855)), }, -- 
                [1] = { id = 58864, name = zo_strformat("<<1>>", GetAbilityName(58864)), }, -- 
                [2] = { id = 58879, name = zo_strformat("<<1>>", GetAbilityName(58879)), }, -- 
            },
        },
    },
    ["guild"] = {
        [2] = { -- Fighters Guild
            name = zo_strformat("<<1>>", GetSkillLineNameById(45)),
            [1] = { -- Dawnbreaker
                [0] = { id = 35713, name = zo_strformat("<<1>>", GetAbilityName(35713)), }, -- Dawnbreaker
                [1] = { id = 40161, name = zo_strformat("<<1>>", GetAbilityName(40161)), }, -- Flawless Dawnbreaker
                [2] = { id = 40158, name = zo_strformat("<<1>>", GetAbilityName(40158)), }, -- Dawnbreaker of Smiting
            },
            [2] = { -- 
                [0] = { id = 35721, name = zo_strformat("<<1>>", GetAbilityName(35721)), }, -- 
                [1] = { id = 40300, name = zo_strformat("<<1>>", GetAbilityName(40300)), }, -- 
                [2] = { id = 40336, name = zo_strformat("<<1>>", GetAbilityName(40336)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 35737, name = zo_strformat("<<1>>", GetAbilityName(35737)), }, -- 
                [1] = { id = 40181, name = zo_strformat("<<1>>", GetAbilityName(40181)), }, -- 
                [2] = { id = 40169, name = zo_strformat("<<1>>", GetAbilityName(40169)), }, -- 
            },
            [4] = { -- Expert Hunter
                [0] = { id = 35762, name = zo_strformat("<<1>>", GetAbilityName(35762)), }, -- Expert Hunter
                [1] = { id = 40194, name = zo_strformat("<<1>>", GetAbilityName(40194)), }, -- Evil Hunter
                [2] = { id = 40195, name = zo_strformat("<<1>>", GetAbilityName(40195)), }, -- Camouflaged Hunter
            },
            [5] = { -- 
                [0] = { id = 35750, name = zo_strformat("<<1>>", GetAbilityName(35750)), }, -- 
                [1] = { id = 40382, name = zo_strformat("<<1>>", GetAbilityName(40382)), }, -- 
                [2] = { id = 40372, name = zo_strformat("<<1>>", GetAbilityName(40372)), }, -- 
            },
        },
        [3] = { -- Mages Guild
            name = zo_strformat("<<1>>", GetSkillLineNameById(44)),
            [1] = { -- 
                [0] = { id = 16536, name = zo_strformat("<<1>>", GetAbilityName(16536)), }, -- 
                [1] = { id = 40489, name = zo_strformat("<<1>>", GetAbilityName(40489)), }, -- 
                [2] = { id = 40493, name = zo_strformat("<<1>>", GetAbilityName(40493)), }, -- 
            },
            [2] = { -- Magelight
                [0] = { id = 30920, name = zo_strformat("<<1>>", GetAbilityName(30920)), }, -- Magelight
                [1] = { id = 40478, name = zo_strformat("<<1>>", GetAbilityName(40478)), }, -- Inner Light
                [2] = { id = 40483, name = zo_strformat("<<1>>", GetAbilityName(40483)), }, -- Radiant Magelight
            },
            [3] = { -- 
                [0] = { id = 28567, name = zo_strformat("<<1>>", GetAbilityName(28567)), }, -- 
                [1] = { id = 40457, name = zo_strformat("<<1>>", GetAbilityName(40457)), }, -- 
                [2] = { id = 40452, name = zo_strformat("<<1>>", GetAbilityName(40452)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 31632, name = zo_strformat("<<1>>", GetAbilityName(31632)), }, -- 
                [1] = { id = 40470, name = zo_strformat("<<1>>", GetAbilityName(40470)), }, -- 
                [2] = { id = 40465, name = zo_strformat("<<1>>", GetAbilityName(40465)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 31642, name = zo_strformat("<<1>>", GetAbilityName(31642)), }, -- 
                [1] = { id = 40445, name = zo_strformat("<<1>>", GetAbilityName(40445)), }, -- 
                [2] = { id = 40441, name = zo_strformat("<<1>>", GetAbilityName(40441)), }, -- 
            },
        },
        [4] = { -- Psijic Order
            name = zo_strformat("<<1>>", GetSkillLineNameById(130)),
            [1] = { -- Undo
                [0] = { id = 103478, name = zo_strformat("<<1>>", GetAbilityName(103478)), }, -- Undo
                [1] = { id = 103557, name = zo_strformat("<<1>>", GetAbilityName(103557)), }, -- Precognition
                [2] = { id = 103564, name = zo_strformat("<<1>>", GetAbilityName(103564)), }, -- Temporal Guard
            },
            [2] = { -- 
                [0] = { id = 103488, name = zo_strformat("<<1>>", GetAbilityName(103488)), }, -- 
                [1] = { id = 104059, name = zo_strformat("<<1>>", GetAbilityName(104059)), }, -- 
                [2] = { id = 104079, name = zo_strformat("<<1>>", GetAbilityName(104079)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 103483, name = zo_strformat("<<1>>", GetAbilityName(103483)), }, -- 
                [1] = { id = 103571, name = zo_strformat("<<1>>", GetAbilityName(103571)), }, -- 
                [2] = { id = 103623, name = zo_strformat("<<1>>", GetAbilityName(103623)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 103503, name = zo_strformat("<<1>>", GetAbilityName(103503)), }, -- 
                [1] = { id = 103706, name = zo_strformat("<<1>>", GetAbilityName(103706)), }, -- 
                [2] = { id = 103710, name = zo_strformat("<<1>>", GetAbilityName(103710)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 103543, name = zo_strformat("<<1>>", GetAbilityName(103543)), }, -- 
                [1] = { id = 103747, name = zo_strformat("<<1>>", GetAbilityName(103747)), }, -- 
                [2] = { id = 103755, name = zo_strformat("<<1>>", GetAbilityName(103755)), }, -- 
            },
            [6] = { -- 
                [0] = { id = 103492, name = zo_strformat("<<1>>", GetAbilityName(103492)), }, -- 
                [1] = { id = 103652, name = zo_strformat("<<1>>", GetAbilityName(103652)), }, -- 
                [2] = { id = 103665, name = zo_strformat("<<1>>", GetAbilityName(103665)), }, -- 
            },
        },
        [6] = { -- Undaunted
            name = zo_strformat("<<1>>", GetSkillLineNameById(55)),
            [1] = { -- 
                [0] = { id = 39489, name = zo_strformat("<<1>>", GetAbilityName(39489)), }, -- 
                [1] = { id = 41967, name = zo_strformat("<<1>>", GetAbilityName(41967)), }, -- 
                [2] = { id = 41958, name = zo_strformat("<<1>>", GetAbilityName(41958)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 39425, name = zo_strformat("<<1>>", GetAbilityName(39425)), }, -- 
                [1] = { id = 41990, name = zo_strformat("<<1>>", GetAbilityName(41990)), }, -- 
                [2] = { id = 42012, name = zo_strformat("<<1>>", GetAbilityName(42012)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 39475, name = zo_strformat("<<1>>", GetAbilityName(39475)), }, -- 
                [1] = { id = 42056, name = zo_strformat("<<1>>", GetAbilityName(42056)), }, -- 
                [2] = { id = 42060, name = zo_strformat("<<1>>", GetAbilityName(42060)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 39369, name = zo_strformat("<<1>>", GetAbilityName(39369)), }, -- 
                [1] = { id = 42138, name = zo_strformat("<<1>>", GetAbilityName(42138)), }, -- 
                [2] = { id = 42176, name = zo_strformat("<<1>>", GetAbilityName(42176)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 39298, name = zo_strformat("<<1>>", GetAbilityName(39298)), }, -- 
                [1] = { id = 42028, name = zo_strformat("<<1>>", GetAbilityName(42028)), }, -- 
                [2] = { id = 42038, name = zo_strformat("<<1>>", GetAbilityName(42038)), }, -- 
            },
        },
    },
    ["ava"] = {
        [1] = { -- Assault
            name = zo_strformat("<<1>>", GetSkillLineNameById(48)),
            [1] = { -- 
                [0] = { id = 38563, name = zo_strformat("<<1>>", GetAbilityName(38563)), }, -- 
                [1] = { id = 40223, name = zo_strformat("<<1>>", GetAbilityName(40223)), }, -- 
                [2] = { id = 40220, name = zo_strformat("<<1>>", GetAbilityName(40220)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 38566, name = zo_strformat("<<1>>", GetAbilityName(38566)), }, -- 
                [1] = { id = 40211, name = zo_strformat("<<1>>", GetAbilityName(40211)), }, -- 
                [2] = { id = 40215, name = zo_strformat("<<1>>", GetAbilityName(40215)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 61503, name = zo_strformat("<<1>>", GetAbilityName(61503)), }, -- 
                [1] = { id = 61505, name = zo_strformat("<<1>>", GetAbilityName(61505)), }, -- 
                [2] = { id = 61507, name = zo_strformat("<<1>>", GetAbilityName(61507)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 33376, name = zo_strformat("<<1>>", GetAbilityName(33376)), }, -- 
                [1] = { id = 40255, name = zo_strformat("<<1>>", GetAbilityName(40255)), }, -- 
                [2] = { id = 40242, name = zo_strformat("<<1>>", GetAbilityName(40242)), }, -- 
            },
            [5] = { -- 
                [0] = { id = 61487, name = zo_strformat("<<1>>", GetAbilityName(61487)), }, -- 
                [1] = { id = 61491, name = zo_strformat("<<1>>", GetAbilityName(61491)), }, -- 
                [2] = { id = 61500, name = zo_strformat("<<1>>", GetAbilityName(61500)), }, -- 
            },
        },
        [3] = { -- Support
            name = zo_strformat("<<1>>", GetSkillLineNameById(67)),
            [1] = { -- 
                [0] = { id = 38573, name = zo_strformat("<<1>>", GetAbilityName(38573)), }, -- 
                [1] = { id = 40237, name = zo_strformat("<<1>>", GetAbilityName(40237)), }, -- 
                [2] = { id = 40239, name = zo_strformat("<<1>>", GetAbilityName(40239)), }, -- 
            },
            [2] = { -- 
                [0] = { id = 38570, name = zo_strformat("<<1>>", GetAbilityName(38570)), }, -- 
                [1] = { id = 40229, name = zo_strformat("<<1>>", GetAbilityName(40229)), }, -- 
                [2] = { id = 40226, name = zo_strformat("<<1>>", GetAbilityName(40226)), }, -- 
            },
            [3] = { -- 
                [0] = { id = 38571, name = zo_strformat("<<1>>", GetAbilityName(38571)), }, -- 
                [1] = { id = 40232, name = zo_strformat("<<1>>", GetAbilityName(40232)), }, -- 
                [2] = { id = 40234, name = zo_strformat("<<1>>", GetAbilityName(40234)), }, -- 
            },
            [4] = { -- 
                [0] = { id = 61511, name = zo_strformat("<<1>>", GetAbilityName(61511)), }, -- 
                [1] = { id = 61536, name = zo_strformat("<<1>>", GetAbilityName(61536)), }, -- 
                [2] = { id = 61529, name = zo_strformat("<<1>>", GetAbilityName(61529)), }, -- 
            },
            [5] = { -- Revealing Flare
                [0] = { id = 61489, name = zo_strformat("<<1>>", GetAbilityName(61489)), }, -- Revealing Flare
                [1] = { id = 61519, name = zo_strformat("<<1>>", GetAbilityName(61519)), }, -- Lingering Flare
                [2] = { id = 61524, name = zo_strformat("<<1>>", GetAbilityName(61524)), }, -- Blinding Flare
            },
        },
    },
}
