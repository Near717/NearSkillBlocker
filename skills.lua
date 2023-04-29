NEAR_SB.skilldata = {}
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- --- @param abilityId integer
-- --- @return skillType [SkillType|#SkillType], skillLineIndex luaindex, skillIndex luaindex, morphChoice integer, rank integer
-- GetSpecificSkillAbilityKeysByAbilityId(abilityId)

-- --- @param skillType [SkillType|#SkillType]
-- --- @param skillLineIndex luaindex
-- --- @return skillLineId integer
-- GetSkillLineId(skillType, skillLineIndex)

-- --- @param skillLineId integer
-- --- @return name string
--  GetSkillLineNameById(skillLineId)

-- GetUnitClassId('player')

-- GetSlotBoundId(SlotNum)

--[[

local classid = {
    ["Dragonknight"] = 1,
    ["Sorcerer"] = 2,
    ["Nightblade"] = 3,
    ["Warden"] = 4,
    ["Necromancer"] = 5,
    ["Templar"] = 6,
    ["Arcanist"] = 117,
}

local skillid = {
    ["class_skill"] = {
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
    ["weapon"] = {
        [1] = 30, -- "Two Handed",
        [2] = 29, -- "One Hand and Shield",
        [3] = 31, -- "Dual Wield",
        [4] = 32, -- "Bow",
        [5] = 33, -- "Destruction Staff",
        [6] = 34, -- "Restoration Staff",
    },
    ["armor"] = {
        [1] = 24, -- "Light Armor",
        [2] = 25, -- "Medium Armor",
        [3] = 26, -- "Heavy Armor",
    },
    ["world"] = {
        [4] = 72, -- "Soul Magic",
        [5] = 51, -- "Vampire",
        [6] = 50, -- "Werewolf",
    },
    ["guild"] = {
        [2] = 45, -- "Fighters Guild",
        [3] = 44, -- "Mages Guild",
        [4] = 130, -- "Psijic Order",
        [6] = 55, -- "Undaunted",
    },
    ["ava"] = {
        [1] = 48, -- "Assault",
        [3] = 67, -- "Support",
    },
}

]]

NEAR_SB.skilldata = {
    ["class"] = {
        [1] = GetClassName(1, 1), -- "Dragonknight"
        [2] = GetClassName(1, 2), -- "Sorcerer"
        [3] = GetClassName(1, 3), -- "Nightblade"
        [4] = GetClassName(1, 4), -- "Warden"
        [5] = GetClassName(1, 5), -- "Necromancer"
        [6] = GetClassName(1, 6), -- "Templar"
        [7] = GetClassName(1, 117), -- "Arcanist"
    },
    ["class_skill"] = {
        ["Flame"] = { -- Ardent Flame
            name = GetSkillLineNameById(35),
            [1] = { -- 
                [0] = { id = 28988, name = GetAbilityName(28988), }, -- Dragonknight Standart
                [1] = { id = 32958, name = GetAbilityName(32958), }, -- 
                [2] = { id = 32947, name = GetAbilityName(32947), }, -- 
            },
            [2] = { -- 
                [0] = { id = 23806, name = GetAbilityName(23806), }, -- 
                [1] = { id = 20805, name = GetAbilityName(20805), }, -- 
                [2] = { id = 20816, name = GetAbilityName(20816), }, -- 
            },
            [3] = { -- 
                [0] = { id = 20657, name = GetAbilityName(20657), }, -- 
                [1] = { id = 20668, name = GetAbilityName(20668), }, -- 
                [2] = { id = 20660, name = GetAbilityName(20660), }, -- 
            },
            [4] = { -- 
                [0] = { id = 20917, name = GetAbilityName(20917), }, -- 
                [1] = { id = 20944, name = GetAbilityName(20944), }, -- 
                [2] = { id = 20930, name = GetAbilityName(20930), }, -- 
            },
            [5] = { -- 
                [0] = { id = 20492, name = GetAbilityName(20492), }, -- 
                [1] = { id = 20499, name = GetAbilityName(20499), }, -- 
                [2] = { id = 20496, name = GetAbilityName(20496), }, -- 
            },
            [6] = { -- 
                [0] = { id = 28967, name = GetAbilityName(28967), }, -- 
                [1] = { id = 32853, name = GetAbilityName(32853), }, -- 
                [2] = { id = 32881, name = GetAbilityName(32881), }, -- 
            },
        },
        ["Draconic"] = { -- Draconic Power
            name = GetSkillLineNameById(36),
            [1] = { -- Dragon Leap
                [0] = { id = 29012, name = GetAbilityName(29012), }, -- Dragon Leap
                [1] = { id = 32719, name = GetAbilityName(32719), }, -- Take Flight
                [2] = { id = 32715, name = GetAbilityName(32715), }, -- Ferocious Leap
            },
            [2] = { -- 
                [0] = { id = 20319, name = GetAbilityName(20319), }, -- 
                [1] = { id = 20328, name = GetAbilityName(20328), }, -- 
                [2] = { id = 20323, name = GetAbilityName(20323), }, -- 
            },
            [3] = { -- 
                [0] = { id = 20245, name = GetAbilityName(20245), }, -- 
                [1] = { id = 20252, name = GetAbilityName(20252), }, -- 
                [2] = { id = 20251, name = GetAbilityName(20251), }, -- 
            },
            [4] = { -- 
                [0] = { id = 29004, name = GetAbilityName(29004), }, -- 
                [1] = { id = 32744, name = GetAbilityName(32744), }, -- 
                [2] = { id = 32722, name = GetAbilityName(32722), }, -- 
            },
            [5] = { -- 
                [0] = { id = 21007, name = GetAbilityName(21007), }, -- 
                [1] = { id = 21014, name = GetAbilityName(21014), }, -- 
                [2] = { id = 21017, name = GetAbilityName(21017), }, -- 
            },
            [6] = { -- 
                [0] = { id = 31837, name = GetAbilityName(31837), }, -- 
                [1] = { id = 32792, name = GetAbilityName(32792), }, -- 
                [2] = { id = 32785, name = GetAbilityName(32785), }, -- 
            },
        },
        ["Earth"] = { -- Earthen Heart
            name = GetSkillLineNameById(37),
            [1] = { -- 
                [0] = { id = 15957, name = GetAbilityName(15957), }, -- 
                [1] = { id = 17874, name = GetAbilityName(17874), }, -- 
                [2] = { id = 17878, name = GetAbilityName(17878), }, -- 
            },
            [2] = { -- 
                [0] = { id = 29032, name = GetAbilityName(29032), }, -- 
                [1] = { id = 31820, name = GetAbilityName(31820), }, -- 
                [2] = { id = 31816, name = GetAbilityName(31816), }, -- 
            },
            [3] = { -- 
                [0] = { id = 29043, name = GetAbilityName(29043), }, -- 
                [1] = { id = 31874, name = GetAbilityName(31874), }, -- 
                [2] = { id = 31888, name = GetAbilityName(31888), }, -- 
            },
            [4] = { -- 
                [0] = { id = 29071, name = GetAbilityName(29071), }, -- 
                [1] = { id = 29224, name = GetAbilityName(29224), }, -- 
                [2] = { id = 32673, name = GetAbilityName(32673), }, -- 
            },
            [5] = { -- 
                [0] = { id = 29037, name = GetAbilityName(29037), }, -- 
                [1] = { id = 32685, name = GetAbilityName(32685), }, -- 
                [2] = { id = 32678, name = GetAbilityName(32678), }, -- 
            },
            [6] = { -- 
                [0] = { id = 29059, name = GetAbilityName(29059), }, -- 
                [1] = { id = 20779, name = GetAbilityName(20779), }, -- 
                [2] = { id = 32710, name = GetAbilityName(32710), }, -- 
            },
        },
        ["Dark"] = { -- Dark Magic
            name = GetSkillLineNameById(41),
            [1] = { -- 
                [0] = { id = 27706, name = GetAbilityName(27706), }, -- 
                [1] = { id = 28341, name = GetAbilityName(28341), }, -- 
                [2] = { id = 28348, name = GetAbilityName(28348), }, -- 
            },
            [2] = { -- Crystal Shard
                [0] = { id = 43714, name = GetAbilityName(43714), }, -- Crystal Shard
                [1] = { id = 46331, name = GetAbilityName(46331), }, -- Crystal Weapon
                [2] = { id = 46324, name = GetAbilityName(46324), }, -- Crystal Fragments
            },
            [3] = { -- 
                [0] = { id = 28025, name = GetAbilityName(28025), }, -- 
                [1] = { id = 28308, name = GetAbilityName(28308), }, -- 
                [2] = { id = 28311, name = GetAbilityName(28311), }, -- 
            },
            [4] = { -- 
                [0] = { id = 24371, name = GetAbilityName(24371), }, -- 
                [1] = { id = 24578, name = GetAbilityName(24578), }, -- 
                [2] = { id = 24574, name = GetAbilityName(24574), }, -- 
            },
            [5] = { -- 
                [0] = { id = 24584, name = GetAbilityName(24584), }, -- 
                [1] = { id = 24595, name = GetAbilityName(24595), }, -- 
                [2] = { id = 24589, name = GetAbilityName(24589), }, -- 
            },
            [6] = { -- 
                [0] = { id = 24828, name = GetAbilityName(24828), }, -- 
                [1] = { id = 24842, name = GetAbilityName(24842), }, -- 
                [2] = { id = 24834, name = GetAbilityName(24834), }, -- 
            },
        },
        ["Daedric"] = { -- Daedric Summoning
            name = GetSkillLineNameById(42),
            [1] = { -- 
                [0] = { id = 23634, name = GetAbilityName(23634), }, -- 
                [1] = { id = 23492, name = GetAbilityName(23492), }, -- 
                [2] = { id = 23495, name = GetAbilityName(23495), }, -- 
            },
            [2] = { -- 
                [0] = { id = 23304, name = GetAbilityName(23304), }, -- 
                [1] = { id = 23319, name = GetAbilityName(23319), }, -- 
                [2] = { id = 23316, name = GetAbilityName(23316), }, -- 
            },
            [3] = { -- 
                [0] = { id = 24326, name = GetAbilityName(24326), }, -- 
                [1] = { id = 24328, name = GetAbilityName(24328), }, -- 
                [2] = { id = 24330, name = GetAbilityName(24330), }, -- 
            },
            [4] = { -- 
                [0] = { id = 24613, name = GetAbilityName(24613), }, -- 
                [1] = { id = 24636, name = GetAbilityName(24636), }, -- 
                [2] = { id = 24639, name = GetAbilityName(24639), }, -- 
            },
            [5] = { -- 
                [0] = { id = 28418, name = GetAbilityName(28418), }, -- 
                [1] = { id = 29489, name = GetAbilityName(29489), }, -- 
                [2] = { id = 29482, name = GetAbilityName(29482), }, -- 
            },
            [6] = { -- 
                [0] = { id = 24158, name = GetAbilityName(24158), }, -- 
                [1] = { id = 24165, name = GetAbilityName(24165), }, -- 
                [2] = { id = 24163, name = GetAbilityName(24163), }, -- 
            },
        },
        ["Storm"] = { -- Storm Calling
            name = GetSkillLineNameById(43),
            [1] = { -- 
                [0] = { id = 24785, name = GetAbilityName(24785), }, -- 
                [1] = { id = 24806, name = GetAbilityName(24806), }, -- 
                [2] = { id = 24804, name = GetAbilityName(24804), }, -- 
            },
            [2] = { -- 
                [0] = { id = 18718, name = GetAbilityName(18718), }, -- 
                [1] = { id = 19123, name = GetAbilityName(19123), }, -- 
                [2] = { id = 19109, name = GetAbilityName(19109), }, -- 
            },
            [3] = { -- 
                [0] = { id = 23210, name = GetAbilityName(23210), }, -- 
                [1] = { id = 23231, name = GetAbilityName(23231), }, -- 
                [2] = { id = 23213, name = GetAbilityName(23213), }, -- 
            },
            [4] = { -- 
                [0] = { id = 23182, name = GetAbilityName(23182), }, -- 
                [1] = { id = 23200, name = GetAbilityName(23200), }, -- 
                [2] = { id = 23205, name = GetAbilityName(23205), }, -- 
            },
            [5] = { -- 
                [0] = { id = 23670, name = GetAbilityName(23670), }, -- 
                [1] = { id = 23674, name = GetAbilityName(23674), }, -- 
                [2] = { id = 23678, name = GetAbilityName(23678), }, -- 
            },
            [6] = { -- 
                [0] = { id = 23234, name = GetAbilityName(23234), }, -- 
                [1] = { id = 23236, name = GetAbilityName(23236), }, -- 
                [2] = { id = 23277, name = GetAbilityName(23277), }, -- 
            },
        },
        ["Assassin"] = { -- Assassination
            name = GetSkillLineNameById(38),
            [1] = { -- 
                [0] = { id = 33398, name = GetAbilityName(33398), }, -- 
                [1] = { id = 36508, name = GetAbilityName(36508), }, -- 
                [2] = { id = 36514, name = GetAbilityName(36514), }, -- 
            },
            [2] = { -- 
                [0] = { id = 33386, name = GetAbilityName(33386), }, -- 
                [1] = { id = 34843, name = GetAbilityName(34843), }, -- 
                [2] = { id = 34851, name = GetAbilityName(34851), }, -- 
            },
            [3] = { -- 
                [0] = { id = 18342, name = GetAbilityName(18342), }, -- 
                [1] = { id = 25493, name = GetAbilityName(25493), }, -- 
                [2] = { id = 25484, name = GetAbilityName(25484), }, -- 
            },
            [4] = { -- 
                [0] = { id = 33375, name = GetAbilityName(33375), }, -- 
                [1] = { id = 35414, name = GetAbilityName(35414), }, -- 
                [2] = { id = 35419, name = GetAbilityName(35419), }, -- 
            },
            [5] = { -- 
                [0] = { id = 33357, name = GetAbilityName(33357), }, -- 
                [1] = { id = 36968, name = GetAbilityName(36968), }, -- 
                [2] = { id = 36967, name = GetAbilityName(36967), }, -- 
            },
            [6] = { -- Grim Focus
                [0] = { id = 61902, name = GetAbilityName(61902), }, -- Grim Focus
                [1] = { id = 61927, name = GetAbilityName(61927), }, -- Relentless Focus
                [2] = { id = 61919, name = GetAbilityName(61919), }, -- Merciless Resolve
            },
        },
        ["Shadow"] = { -- Shadow
            name = GetSkillLineNameById(39),
            [1] = { -- 
                [0] = { id = 25411, name = GetAbilityName(25411), }, -- 
                [1] = { id = 36493, name = GetAbilityName(36493), }, -- 
                [2] = { id = 36485, name = GetAbilityName(36485), }, -- 
            },
            [2] = { -- 
                [0] = { id = 25255, name = GetAbilityName(25255), }, -- 
                [1] = { id = 25260, name = GetAbilityName(25260), }, -- 
                [2] = { id = 25267, name = GetAbilityName(25267), }, -- 
            },
            [3] = { -- 
                [0] = { id = 25375, name = GetAbilityName(25375), }, -- 
                [1] = { id = 25380, name = GetAbilityName(25380), }, -- 
                [2] = { id = 25377, name = GetAbilityName(25377), }, -- 
            },
            [4] = { -- 
                [0] = { id = 33195, name = GetAbilityName(33195), }, -- 
                [1] = { id = 36049, name = GetAbilityName(36049), }, -- 
                [2] = { id = 36028, name = GetAbilityName(36028), }, -- 
            },
            [5] = { -- 
                [0] = { id = 25352, name = GetAbilityName(25352), }, -- 
                [1] = { id = 37470, name = GetAbilityName(37470), }, -- 
                [2] = { id = 37475, name = GetAbilityName(37475), }, -- 
            },
            [6] = { -- 
                [0] = { id = 33211, name = GetAbilityName(33211), }, -- 
                [1] = { id = 35434, name = GetAbilityName(35434), }, -- 
                [2] = { id = 35441, name = GetAbilityName(35441), }, -- 
            },
        },
        ["Siphon"] = { -- Siphoning
            name = GetSkillLineNameById(40),
            [1] = { -- 
                [0] = { id = 25091, name = GetAbilityName(25091), }, -- 
                [1] = { id = 35508, name = GetAbilityName(35508), }, -- 
                [2] = { id = 35460, name = GetAbilityName(35460), }, -- 
            },
            [2] = { -- 
                [0] = { id = 33291, name = GetAbilityName(33291), }, -- 
                [1] = { id = 34838, name = GetAbilityName(34838), }, -- 
                [2] = { id = 34835, name = GetAbilityName(34835), }, -- 
            },
            [3] = { -- 
                [0] = { id = 33308, name = GetAbilityName(33308), }, -- 
                [1] = { id = 34721, name = GetAbilityName(34721), }, -- 
                [2] = { id = 34727, name = GetAbilityName(34727), }, -- 
            },
            [4] = { -- 
                [0] = { id = 33326, name = GetAbilityName(33326), }, -- 
                [1] = { id = 36943, name = GetAbilityName(36943), }, -- 
                [2] = { id = 36957, name = GetAbilityName(36957), }, -- 
            },
            [5] = { -- Siphoning Strikes
                [0] = { id = 33319, name = GetAbilityName(33319), }, -- Siphoning Strikes
                [1] = { id = 36908, name = GetAbilityName(36908), }, -- Siphoning Attacks
                [2] = { id = 36935, name = GetAbilityName(36935), }, -- Leeching Strikes
            },
            [6] = { -- 
                [0] = { id = 33316, name = GetAbilityName(33316), }, -- Drain Power
                [1] = { id = 36901, name = GetAbilityName(36901), }, -- 
                [2] = { id = 36891, name = GetAbilityName(36891), }, -- 
            },
        },
        ["Animal"] = { -- Animal Companions
            name = GetSkillLineNameById(127),
            [1] = { -- 
                [0] = { id = 85982, name = GetAbilityName(85982), }, -- 
                [1] = { id = 85986, name = GetAbilityName(85986), }, -- 
                [2] = { id = 85990, name = GetAbilityName(85990), }, -- 
            },
            [2] = { -- 
                [0] = { id = 85995, name = GetAbilityName(85995), }, -- 
                [1] = { id = 85999, name = GetAbilityName(85999), }, -- 
                [2] = { id = 86003, name = GetAbilityName(86003), }, -- 
            },
            [3] = { -- 
                [0] = { id = 86009, name = GetAbilityName(86009), }, -- 
                [1] = { id = 86019, name = GetAbilityName(86019), }, -- 
                [2] = { id = 86015, name = GetAbilityName(86015), }, -- 
            },
            [4] = { -- 
                [0] = { id = 86023, name = GetAbilityName(86023), }, -- 
                [1] = { id = 86027, name = GetAbilityName(86027), }, -- 
                [2] = { id = 86031, name = GetAbilityName(86031), }, -- 
            },
            [5] = { -- 
                [0] = { id = 86050, name = GetAbilityName(86050), }, -- 
                [1] = { id = 86054, name = GetAbilityName(86054), }, -- 
                [2] = { id = 86058, name = GetAbilityName(86058), }, -- 
            },
            [6] = { -- 
                [0] = { id = 86037, name = GetAbilityName(86037), }, -- 
                [1] = { id = 86041, name = GetAbilityName(86041), }, -- 
                [2] = { id = 86045, name = GetAbilityName(86045), }, -- 
            },
        },
        ["Green"] = { -- Green Balance
            name = GetSkillLineNameById(128),
            [1] = { -- 
                [0] = { id = 85532, name = GetAbilityName(85532), }, -- 
                [1] = { id = 85804, name = GetAbilityName(85804), }, -- 
                [2] = { id = 85807, name = GetAbilityName(85807), }, -- 
            },
            [2] = { -- 
                [0] = { id = 85536, name = GetAbilityName(85536), }, -- 
                [1] = { id = 85862, name = GetAbilityName(85862), }, -- 
                [2] = { id = 85863, name = GetAbilityName(85863), }, -- 
            },
            [3] = { -- 
                [0] = { id = 85578, name = GetAbilityName(85578), }, -- 
                [1] = { id = 85840, name = GetAbilityName(85840), }, -- 
                [2] = { id = 85845, name = GetAbilityName(85845), }, -- 
            },
            [4] = { -- 
                [0] = { id = 85552, name = GetAbilityName(85552), }, -- 
                [1] = { id = 85850, name = GetAbilityName(85850), }, -- 
                [2] = { id = 85851, name = GetAbilityName(85851), }, -- 
            },
            [5] = { -- 
                [0] = { id = 85539, name = GetAbilityName(85539), }, -- 
                [1] = { id = 85854, name = GetAbilityName(85854), }, -- 
                [2] = { id = 85855, name = GetAbilityName(85855), }, -- 
            },
            [6] = { -- 
                [0] = { id = 85564, name = GetAbilityName(85564), }, -- 
                [1] = { id = 85859, name = GetAbilityName(85859), }, -- 
                [2] = { id = 85858, name = GetAbilityName(85858), }, -- 
            },
        },
        ["Winter"] = { -- Winter's Embrace
            name = GetSkillLineNameById(129),
            [1] = { -- 
                [0] = { id = 86109, name = GetAbilityName(86109), }, -- 
                [1] = { id = 86113, name = GetAbilityName(86113), }, -- 
                [2] = { id = 86117, name = GetAbilityName(86117), }, -- 
            },
            [2] = { -- 
                [0] = { id = 86122, name = GetAbilityName(86122), }, -- 
                [1] = { id = 86126, name = GetAbilityName(86126), }, -- 
                [2] = { id = 86130, name = GetAbilityName(86130), }, -- 
            },
            [3] = { -- 
                [0] = { id = 86161, name = GetAbilityName(86161), }, -- 
                [1] = { id = 86165, name = GetAbilityName(86165), }, -- 
                [2] = { id = 86169, name = GetAbilityName(86169), }, -- 
            },
            [4] = { -- 
                [0] = { id = 86148, name = GetAbilityName(86148), }, -- 
                [1] = { id = 86152, name = GetAbilityName(86152), }, -- 
                [2] = { id = 86156, name = GetAbilityName(86156), }, -- 
            },
            [5] = { -- 
                [0] = { id = 86135, name = GetAbilityName(86135), }, -- 
                [1] = { id = 86139, name = GetAbilityName(86139), }, -- 
                [2] = { id = 86143, name = GetAbilityName(86143), }, -- 
            },
            [6] = { -- 
                [0] = { id = 86175, name = GetAbilityName(86175), }, -- 
                [1] = { id = 86179, name = GetAbilityName(86179), }, -- 
                [2] = { id = 86183, name = GetAbilityName(86183), }, -- 
            },
        },
        ["Grave"] = { -- Grave Lord
            name = GetSkillLineNameById(131),
            [1] = { -- 
                [0] = { id = 122174, name = GetAbilityName(122174), }, -- 
                [1] = { id = 122395, name = GetAbilityName(122395), }, -- 
                [2] = { id = 122388, name = GetAbilityName(122388), }, -- 
            },
            [2] = { -- 
                [0] = { id = 114108, name = GetAbilityName(114108), }, -- 
                [1] = { id = 117624, name = GetAbilityName(117624), }, -- 
                [2] = { id = 117637, name = GetAbilityName(117637), }, -- 
            },
            [3] = { -- 
                [0] = { id = 114860, name = GetAbilityName(114860), }, -- 
                [1] = { id = 117690, name = GetAbilityName(117690), }, -- 
                [2] = { id = 117749, name = GetAbilityName(117749), }, -- 
            },
            [4] = { -- 
                [0] = { id = 115252, name = GetAbilityName(115252), }, -- 
                [1] = { id = 117805, name = GetAbilityName(117805), }, -- 
                [2] = { id = 117850, name = GetAbilityName(117850), }, -- 
            },
            [5] = { -- 
                [0] = { id = 114317, name = GetAbilityName(114317), }, -- 
                [1] = { id = 118680, name = GetAbilityName(118680), }, -- 
                [2] = { id = 118726, name = GetAbilityName(118726), }, -- 
            },
            [6] = { -- 
                [0] = { id = 115924, name = GetAbilityName(115924), }, -- 
                [1] = { id = 118763, name = GetAbilityName(118763), }, -- 
                [2] = { id = 118008, name = GetAbilityName(118008), }, -- 
            },
        },
        ["Bone"] = { -- Bone Tyrant
            name = GetSkillLineNameById(132),
            [1] = { -- 
                [0] = { id = 115001, name = GetAbilityName(115001), }, -- 
                [1] = { id = 118664, name = GetAbilityName(118664), }, -- 
                [2] = { id = 118279, name = GetAbilityName(118279), }, -- 
            },
            [2] = { -- 
                [0] = { id = 115115, name = GetAbilityName(115115), }, -- 
                [1] = { id = 118226, name = GetAbilityName(118226), }, -- 
                [2] = { id = 118223, name = GetAbilityName(118223), }, -- 
            },
            [3] = { -- 
                [0] = { id = 115206, name = GetAbilityName(115206), }, -- 
                [1] = { id = 118237, name = GetAbilityName(118237), }, -- 
                [2] = { id = 118244, name = GetAbilityName(118244), }, -- 
            },
            [4] = { -- 
                [0] = { id = 115238, name = GetAbilityName(115238), }, -- 
                [1] = { id = 118623, name = GetAbilityName(118623), }, -- 
                [2] = { id = 118639, name = GetAbilityName(118639), }, -- 
            },
            [5] = { -- 
                [0] = { id = 115093, name = GetAbilityName(115093), }, -- 
                [1] = { id = 118380, name = GetAbilityName(118380), }, -- 
                [2] = { id = 118404, name = GetAbilityName(118404), }, -- 
            },
            [6] = { -- 
                [0] = { id = 115177, name = GetAbilityName(115177), }, -- 
                [1] = { id = 118308, name = GetAbilityName(118308), }, -- 
                [2] = { id = 118352, name = GetAbilityName(118352), }, -- 
            },
        },
        ["Living"] = { -- Living Death
            name = GetSkillLineNameById(133),
            [1] = { -- 
                [0] = { id = 115410, name = GetAbilityName(115410), }, -- 
                [1] = { id = 118367, name = GetAbilityName(118367), }, -- 
                [2] = { id = 118379, name = GetAbilityName(118379), }, -- 
            },
            [2] = { -- 
                [0] = { id = 114196, name = GetAbilityName(114196), }, -- 
                [1] = { id = 117883, name = GetAbilityName(117883), }, -- 
                [2] = { id = 117888, name = GetAbilityName(117888), }, -- 
            },
            [3] = { -- 
                [0] = { id = 115307, name = GetAbilityName(115307), }, -- 
                [1] = { id = 117940, name = GetAbilityName(117940), }, -- 
                [2] = { id = 117919, name = GetAbilityName(117919), }, -- 
            },
            [4] = { -- 
                [0] = { id = 115315, name = GetAbilityName(115315), }, -- 
                [1] = { id = 118017, name = GetAbilityName(118017), }, -- 
                [2] = { id = 118809, name = GetAbilityName(118809), }, -- 
            },
            [5] = { -- 
                [0] = { id = 115710, name = GetAbilityName(115710), }, -- 
                [1] = { id = 118912, name = GetAbilityName(118912), }, -- 
                [2] = { id = 118840, name = GetAbilityName(118840), }, -- 
            },
            [6] = { -- 
                [0] = { id = 115926, name = GetAbilityName(115926), }, -- 
                [1] = { id = 118070, name = GetAbilityName(118070), }, -- 
                [2] = { id = 118122, name = GetAbilityName(118122), }, -- 
            },
        },
        ["Spear"] = { -- Aedric Spear
            name = GetSkillLineNameById(22),
            [1] = { -- 
                [0] = { id = 22138, name = GetAbilityName(22138), }, -- 
                [1] = { id = 22144, name = GetAbilityName(22144), }, -- 
                [2] = { id = 22139, name = GetAbilityName(22139), }, -- 
            },
            [2] = { -- 
                [0] = { id = 26114, name = GetAbilityName(26114), }, -- 
                [1] = { id = 26792, name = GetAbilityName(26792), }, -- 
                [2] = { id = 26797, name = GetAbilityName(26797), }, -- 
            },
            [3] = { -- 
                [0] = { id = 26158, name = GetAbilityName(26158), }, -- 
                [1] = { id = 26800, name = GetAbilityName(26800), }, -- 
                [2] = { id = 26804, name = GetAbilityName(26804), }, -- 
            },
            [4] = { -- 
                [0] = { id = 22149, name = GetAbilityName(22149), }, -- 
                [1] = { id = 22161, name = GetAbilityName(22161), }, -- 
                [2] = { id = 15540, name = GetAbilityName(15540), }, -- 
            },
            [5] = { -- 
                [0] = { id = 26188, name = GetAbilityName(26188), }, -- 
                [1] = { id = 26858, name = GetAbilityName(26858), }, -- 
                [2] = { id = 26869, name = GetAbilityName(26869), }, -- 
            },
            [6] = { -- 
                [0] = { id = 22178, name = GetAbilityName(22178), }, -- 
                [1] = { id = 22182, name = GetAbilityName(22182), }, -- 
                [2] = { id = 22180, name = GetAbilityName(22180), }, -- 
            },
        },
        ["Dawn"] = { -- Dawn's Wrath
            name = GetSkillLineNameById(27),
            [1] = { -- 
                [0] = { id = 21752, name = GetAbilityName(21752), }, -- 
                [1] = { id = 21755, name = GetAbilityName(21755), }, -- 
                [2] = { id = 21758, name = GetAbilityName(21758), }, -- 
            },
            [2] = { -- 
                [0] = { id = 21726, name = GetAbilityName(21726), }, -- 
                [1] = { id = 21729, name = GetAbilityName(21729), }, -- 
                [2] = { id = 21732, name = GetAbilityName(21732), }, -- 
            },
            [3] = { -- 
                [0] = { id = 22057, name = GetAbilityName(22057), }, -- 
                [1] = { id = 22110, name = GetAbilityName(22110), }, -- 
                [2] = { id = 22095, name = GetAbilityName(22095), }, -- 
            },
            [4] = { -- 
                [0] = { id = 21761, name = GetAbilityName(21761), }, -- 
                [1] = { id = 21765, name = GetAbilityName(21765), }, -- 
                [2] = { id = 21763, name = GetAbilityName(21763), }, -- 
            },
            [5] = { -- 
                [0] = { id = 21776, name = GetAbilityName(21776), }, -- 
                [1] = { id = 22006, name = GetAbilityName(22006), }, -- 
                [2] = { id = 22004, name = GetAbilityName(22004), }, -- 
            },
            [6] = { -- 
                [0] = { id = 63029, name = GetAbilityName(63029), }, -- 
                [1] = { id = 63044, name = GetAbilityName(63044), }, -- 
                [2] = { id = 63046, name = GetAbilityName(63046), }, -- 
            },
        },
        ["Resto"] = { -- Restoring Light
            name = GetSkillLineNameById(28),
            [1] = { -- 
                [0] = { id = 22223, name = GetAbilityName(22223), }, -- 
                [1] = { id = 22229, name = GetAbilityName(22229), }, -- 
                [2] = { id = 22226, name = GetAbilityName(22226), }, -- 
            },
            [2] = { -- 
                [0] = { id = 22250, name = GetAbilityName(22250), }, -- 
                [1] = { id = 22253, name = GetAbilityName(22253), }, -- 
                [2] = { id = 22256, name = GetAbilityName(22256), }, -- 
            },
            [3] = { -- 
                [0] = { id = 22304, name = GetAbilityName(22304), }, -- 
                [1] = { id = 22327, name = GetAbilityName(22327), }, -- 
                [2] = { id = 22314, name = GetAbilityName(22314), }, -- 
            },
            [4] = { -- 
                [0] = { id = 26209, name = GetAbilityName(26209), }, -- 
                [1] = { id = 26807, name = GetAbilityName(26807), }, -- 
                [2] = { id = 26821, name = GetAbilityName(26821), }, -- 
            },
            [5] = { -- 
                [0] = { id = 22265, name = GetAbilityName(22265), }, -- 
                [1] = { id = 22259, name = GetAbilityName(22259), }, -- 
                [2] = { id = 22262, name = GetAbilityName(22262), }, -- 
            },
            [6] = { -- 
                [0] = { id = 22234, name = GetAbilityName(22234), }, -- 
                [1] = { id = 22240, name = GetAbilityName(22240), }, -- 
                [2] = { id = 22237, name = GetAbilityName(22237), }, -- 
            },
        },
        ["Herald"] = { -- Herald of the Tome
            name = GetSkillLineNameById(218),
            [1] = { -- 
                [0] = { id = 189791, name = GetAbilityName(189791), }, -- The Unblinking Eye
                [1] = { id = 189837, name = GetAbilityName(189837), }, -- The Tide King's Gaze
                [2] = { id = 189867, name = GetAbilityName(189867), }, -- The Languid Eye
            },
            [2] = { -- 
                [0] = { id = 185794, name = GetAbilityName(185794), }, -- Runeblades
                [1] = { id = 185803, name = GetAbilityName(185803), }, -- Writhing Runeblades
                [2] = { id = 182977, name = GetAbilityName(182977), }, -- Escalating Runeblades
            },
            [3] = { -- 
                [0] = { id = 185805, name = GetAbilityName(185805), }, -- Fatecarver
                [1] = { id = 183122, name = GetAbilityName(183122), }, -- Exhausting Fatecarver
                [2] = { id = 186366, name = GetAbilityName(186366), }, -- Pragmatic Fatecarver
            },
            [4] = { -- 
                [0] = { id = 185817, name = GetAbilityName(185817), }, -- Abyssal Impact
                [1] = { id = 183006, name = GetAbilityName(183006), }, -- Cephaliarch's Flail
                [2] = { id = 185823, name = GetAbilityName(185823), }, -- Tentacular Dread
            },
            [5] = { -- 
                [0] = { id = 186452, name = GetAbilityName(186452), }, -- Tome-Bearer's Inspiration
                [1] = { id = 185842, name = GetAbilityName(185842), }, -- Inspired Scholarship
                [2] = { id = 183047, name = GetAbilityName(183047), }, -- Recuperative Treatise
            },
            [6] = { -- 
                [0] = { id = 185836, name = GetAbilityName(185836), }, -- The Imperfect Ring
                [1] = { id = 185839, name = GetAbilityName(185839), }, -- Rune of Displacement
                [2] = { id = 182988, name = GetAbilityName(182988), }, -- Fulminating Rune
            },
        },
        ["Soldier"] = { -- Soldier of Apocrypha
            name = GetSkillLineNameById(219),
            [1] = { -- 
                [0] = { id = 183676, name = GetAbilityName(183676), }, -- Gibbering Shield
                [1] = { id = 192372, name = GetAbilityName(192372), }, -- Sanctum of the Abyssal Sea
                [2] = { id = 192380, name = GetAbilityName(192380), }, -- Gibbering Shelter
            },
            [2] = { -- 
                [0] = { id = 183165, name = GetAbilityName(183165), }, -- Runic Jolt
                [1] = { id = 183430, name = GetAbilityName(183430), }, -- Runic Sunder
                [2] = { id = 186531, name = GetAbilityName(186531), }, -- Runic Embrace
            },
            [3] = { -- 
                [0] = { id = 185894, name = GetAbilityName(185894), }, -- Runespite Ward
                [1] = { id = 185901, name = GetAbilityName(185901), }, -- Spiteward of the Lucid Mind
                [2] = { id = 183241, name = GetAbilityName(183241), }, -- Impervious Runeward
            },
            [4] = { -- 
                [0] = { id = 183648, name = GetAbilityName(183648), }, -- Fatewoven Armor
                [1] = { id = 185908, name = GetAbilityName(185908), }, -- Cruxweaver Armor
                [2] = { id = 186477, name = GetAbilityName(186477), }, -- Unbreakable Fate
            },
            [5] = { -- 
                [0] = { id = 185912, name = GetAbilityName(185912), }, -- Runic Defense
                [1] = { id = 183401, name = GetAbilityName(183401), }, -- Runeguard of Still Waters
                [2] = { id = 186489, name = GetAbilityName(186489), }, -- Runeguard of Freedom
            },
            [6] = { -- 
                [0] = { id = 185918, name = GetAbilityName(185918), }, -- Rune of Eldritch Horror
                [1] = { id = 185921, name = GetAbilityName(185921), }, -- Rune of Uncanny Adoration
                [2] = { id = 183267, name = GetAbilityName(183267), }, -- Rune of the Colorless Pool
            },
        },
        ["Curative"] = { -- Curative Runeforms
            name = GetSkillLineNameById(220),
            [1] = { -- 
                [0] = { id = 183709, name = GetAbilityName(183709), }, -- Vitalizing Glyphic
                [1] = { id = 193794, name = GetAbilityName(193794), }, -- Glyphic of the Tides
                [2] = { id = 193558, name = GetAbilityName(193558), }, -- Resonating Glyphic
            },
            [2] = { -- 
                [0] = { id = 183261, name = GetAbilityName(183261), }, -- Runemend
                [1] = { id = 186189, name = GetAbilityName(186189), }, -- Evolving Runemend
                [2] = { id = 186191, name = GetAbilityName(186191), }, -- Audacious Runemend
            },
            [3] = { -- 
                [0] = { id = 183537, name = GetAbilityName(183537), }, -- Remedy Cascade
                [1] = { id = 186193, name = GetAbilityName(186193), }, -- Cascading Fortune
                [2] = { id = 186200, name = GetAbilityName(186200), }, -- Curative Surge
            },
            [4] = { -- 
                [0] = { id = 183447, name = GetAbilityName(183447), }, -- Chakram Shields
                [1] = { id = 186207, name = GetAbilityName(186207), }, -- Chakram of Destiny
                [2] = { id = 186209, name = GetAbilityName(186209), }, -- Tidal Chakram
            },
            [5] = { -- 
                [0] = { id = 183555, name = GetAbilityName(183555), }, -- Arcanist's Domain
                [1] = { id = 186229, name = GetAbilityName(186229), }, -- Zenas' Empowering Disc
                [2] = { id = 186234, name = GetAbilityName(186234), }, -- Reconstructive Domain
            },
            [6] = { -- 
                [0] = { id = 183542, name = GetAbilityName(183542), }, -- Apocryphal Gate
                [1] = { id = 186211, name = GetAbilityName(186211), }, -- Fleet-footed Gate
                [2] = { id = 186220, name = GetAbilityName(186220), }, -- Passage Between Worlds
            },
        },
    },
    ["weapon"] = {
        [1] = { -- Two Handed
            name = GetSkillLineNameById(30),
            [1] = { -- 
                [0] = { id = 83216, name = GetAbilityName(83216), }, -- 
                [1] = { id = 83229, name = GetAbilityName(83229), }, -- 
                [2] = { id = 83238, name = GetAbilityName(83238), }, -- 
            },
            [2] = { -- 
                [0] = { id = 28279, name = GetAbilityName(28279), }, -- 
                [1] = { id = 38814, name = GetAbilityName(38814), }, -- 
                [2] = { id = 38807, name = GetAbilityName(38807), }, -- 
            },
            [3] = { -- 
                [0] = { id = 28448, name = GetAbilityName(28448), }, -- 
                [1] = { id = 38788, name = GetAbilityName(38788), }, -- 
                [2] = { id = 38778, name = GetAbilityName(38778), }, -- 
            },
            [4] = { -- 
                [0] = { id = 20919, name = GetAbilityName(20919), }, -- 
                [1] = { id = 38745, name = GetAbilityName(38745), }, -- 
                [2] = { id = 38754, name = GetAbilityName(38754), }, -- 
            },
            [5] = { -- 
                [0] = { id = 28302, name = GetAbilityName(28302), }, -- 
                [1] = { id = 38823, name = GetAbilityName(38823), }, -- 
                [2] = { id = 38819, name = GetAbilityName(38819), }, -- 
            },
            [6] = { -- 
                [0] = { id = 28297, name = GetAbilityName(28297), }, -- 
                [1] = { id = 38794, name = GetAbilityName(38794), }, -- 
                [2] = { id = 38802, name = GetAbilityName(38802), }, -- 
            },
        },
        [2] = { -- One Hand and Shield
            name = GetSkillLineNameById(29),
            [1] = { -- 
                [0] = { id = 83272, name = GetAbilityName(83272), }, -- 
                [1] = { id = 83292, name = GetAbilityName(83292), }, -- 
                [2] = { id = 83310, name = GetAbilityName(83310), }, -- 
            },
            [2] = { -- 
                [0] = { id = 28306, name = GetAbilityName(28306), }, -- 
                [1] = { id = 38256, name = GetAbilityName(38256), }, -- 
                [2] = { id = 38250, name = GetAbilityName(38250), }, -- 
            },
            [3] = { -- 
                [0] = { id = 28304, name = GetAbilityName(28304), }, -- 
                [1] = { id = 38268, name = GetAbilityName(38268), }, -- 
                [2] = { id = 38264, name = GetAbilityName(38264), }, -- 
            },
            [4] = { -- 
                [0] = { id = 28727, name = GetAbilityName(28727), }, -- 
                [1] = { id = 38312, name = GetAbilityName(38312), }, -- 
                [2] = { id = 38317, name = GetAbilityName(38317), }, -- 
            },
            [5] = { -- 
                [0] = { id = 28719, name = GetAbilityName(28719), }, -- 
                [1] = { id = 38401, name = GetAbilityName(38401), }, -- 
                [2] = { id = 38405, name = GetAbilityName(38405), }, -- 
            },
            [6] = { -- 
                [0] = { id = 28365, name = GetAbilityName(28365), }, -- 
                [1] = { id = 38455, name = GetAbilityName(38455), }, -- 
                [2] = { id = 38452, name = GetAbilityName(38452), }, -- 
            },
        },
        [3] = { -- Dual Wield
            name = GetSkillLineNameById(31),
            [1] = { -- 
                [0] = { id = 83600, name = GetAbilityName(83600), }, -- 
                [1] = { id = 85187, name = GetAbilityName(85187), }, -- 
                [2] = { id = 85179, name = GetAbilityName(85179), }, -- 
            },
            [2] = { -- 
                [0] = { id = 28607, name = GetAbilityName(28607), }, -- 
                [1] = { id = 38857, name = GetAbilityName(38857), }, -- 
                [2] = { id = 38846, name = GetAbilityName(38846), }, -- 
            },
            [3] = { -- 
                [0] = { id = 28379, name = GetAbilityName(28379), }, -- 
                [1] = { id = 38839, name = GetAbilityName(38839), }, -- 
                [2] = { id = 38845, name = GetAbilityName(38845), }, -- 
            },
            [4] = { -- 
                [0] = { id = 28591, name = GetAbilityName(28591), }, -- 
                [1] = { id = 38891, name = GetAbilityName(38891), }, -- 
                [2] = { id = 38861, name = GetAbilityName(38861), }, -- 
            },
            [5] = { -- 
                [0] = { id = 28613, name = GetAbilityName(28613), }, -- 
                [1] = { id = 38901, name = GetAbilityName(38901), }, -- 
                [2] = { id = 38906, name = GetAbilityName(38906), }, -- 
            },
            [6] = { -- 
                [0] = { id = 21157, name = GetAbilityName(21157), }, -- 
                [1] = { id = 38914, name = GetAbilityName(38914), }, -- 
                [2] = { id = 38910, name = GetAbilityName(38910), }, -- 
            },
        },
        [4] = { -- Bow
            name = GetSkillLineNameById(32),
            [1] = { -- 
                [0] = { id = 83465, name = GetAbilityName(83465), }, -- 
                [1] = { id = 85257, name = GetAbilityName(85257), }, -- 
                [2] = { id = 85451, name = GetAbilityName(85451), }, -- 
            },
            [2] = { -- 
                [0] = { id = 28882, name = GetAbilityName(28882), }, -- 
                [1] = { id = 38685, name = GetAbilityName(38685), }, -- 
                [2] = { id = 38687, name = GetAbilityName(38687), }, -- 
            },
            [3] = { -- 
                [0] = { id = 28876, name = GetAbilityName(28876), }, -- 
                [1] = { id = 38689, name = GetAbilityName(38689), }, -- 
                [2] = { id = 38695, name = GetAbilityName(38695), }, -- 
            },
            [4] = { -- 
                [0] = { id = 28879, name = GetAbilityName(28879), }, -- 
                [1] = { id = 38672, name = GetAbilityName(38672), }, -- 
                [2] = { id = 38669, name = GetAbilityName(38669), }, -- 
            },
            [5] = { -- 
                [0] = { id = 31271, name = GetAbilityName(31271), }, -- 
                [1] = { id = 38705, name = GetAbilityName(38705), }, -- 
                [2] = { id = 38701, name = GetAbilityName(38701), }, -- 
            },
            [6] = { -- 
                [0] = { id = 28869, name = GetAbilityName(28869), }, -- 
                [1] = { id = 38645, name = GetAbilityName(38645), }, -- 
                [2] = { id = 38660, name = GetAbilityName(38660), }, -- 
            },
        },
        [5] = { -- Destruction Staff
            name = GetSkillLineNameById(33),
            [1] = { -- Elemental Storm
                [0] = { id = 83619, name = GetAbilityName(83619), id1 = 83625, id2 = 83628, id3 = 83630, }, -- Elemental Storm - 83625 (flame) 83628 (frost) 83630 (shock)
                [1] = { id = 84434, name = GetAbilityName(84434), id1 = 85126, id2 = 85128, id3 = 85130, }, -- Elemental Rage - 85126 (flame) 85128 (frost) 85130 (shock)
                [2] = { id = 83642, name = GetAbilityName(83642), id1 = 83682, id2 = 83684, id3 = 83686, }, -- Eye of the Storm - 83682 (flame) 83684 (frost) 83686 (shock)
            },
            [2] = { -- Force Shock
                [0] = { id = 46340, name = GetAbilityName(46340), }, -- Force Shock
                [1] = { id = 46348, name = GetAbilityName(46348), }, -- Crushing Shock
                [2] = { id = 46356, name = GetAbilityName(46356), }, -- Force Pulse
            },
            [3] = { -- Wall of Elements
                [0] = { id = 28858, name = GetAbilityName(28858), id1 = 28807, id2 = 28849, id3 = 28854, }, -- Wall of Elements - 28807 (flame) 28849 (frost) 28854 (shock)
                [1] = { id = 39052, name = GetAbilityName(39052), id1 = 39053, id2 = 39067, id3 = 39073, }, -- Unstable Wall of Elements - 39053 (flame) 39067 (frost) 39073 (storm)
                [2] = { id = 39011, name = GetAbilityName(39011), id1 = 39012, id2 = 39028, id3 = 39018, }, -- Elemental Blockade - 39012 (flame) 39028 (frost) 39018 (shock)
            },
            [4] = { -- Destructive Touch
                [0] = { id = 29091, name = GetAbilityName(29091), id1 = 29073, id2 = 29078, id3 = 29089, }, -- Destructive Touch - 29073 (flame) 29078 (frost) 29089 (shock)
                [1] = { id = 38984, name = GetAbilityName(38984), id1 = 38985, id2 = 38989, id3 = 38993, }, -- Destructive Clench - 38985 (flame) 38989 (frost) 38993 (shock)
                [2] = { id = 38937, name = GetAbilityName(38937), id1 = 38944, id2 = 38970, id3 = 38978, }, -- Destructive Reach - 38944 (flame) 38970 (frost) 38978 (shock)
            },
            [5] = { -- Weakness to Elements
                [0] = { id = 29173, name = GetAbilityName(29173), }, -- Weakness to Elements
                [1] = { id = 39089, name = GetAbilityName(39089), }, -- Elemental Susceptibility
                [2] = { id = 39095, name = GetAbilityName(39095), }, -- Elemental Drain
            },
            [6] = { -- Impulse
                [0] = { id = 28800, name = GetAbilityName(28800), id1 = 28794, id2 = 28798, id3 = 28799, }, -- Impulse - 28794 (flame) 28798 (frost) 28799 (shock)
                [1] = { id = 39143, name = GetAbilityName(39143), id1 = 39145, id2 = 39146, id3 = 39147, }, -- Elemental Ring - 39145 (flame) 39146 (frost) 39147 (shock)
                [2] = { id = 39161, name = GetAbilityName(39161), id1 = 39162, id2 = 39163, id3 = 39167, }, -- Pulsar - 39162 (flame) 39163 (frost) 39167 (shock)
            },
        },
        [6] = { -- Restoration Staff
            name = GetSkillLineNameById(34),
            [1] = { -- 
                [0] = { id = 83552, name = GetAbilityName(83552), }, -- 
                [1] = { id = 83850, name = GetAbilityName(83850), }, -- 
                [2] = { id = 85132, name = GetAbilityName(85132), }, -- 
            },
            [2] = { -- 
                [0] = { id = 28385, name = GetAbilityName(28385), }, -- 
                [1] = { id = 40058, name = GetAbilityName(40058), }, -- 
                [2] = { id = 40060, name = GetAbilityName(40060), }, -- 
            },
            [3] = { -- 
                [0] = { id = 28536, name = GetAbilityName(28536), }, -- 
                [1] = { id = 40076, name = GetAbilityName(40076), }, -- 
                [2] = { id = 40079, name = GetAbilityName(40079), }, -- 
            },
            [4] = { -- 
                [0] = { id = 37243, name = GetAbilityName(37243), }, -- 
                [1] = { id = 40103, name = GetAbilityName(40103), }, -- 
                [2] = { id = 40094, name = GetAbilityName(40094), }, -- 
            },
            [5] = { -- 
                [0] = { id = 37232, name = GetAbilityName(37232), }, -- 
                [1] = { id = 40130, name = GetAbilityName(40130), }, -- 
                [2] = { id = 40126, name = GetAbilityName(40126), }, -- 
            },
            [6] = { -- 
                [0] = { id = 31531, name = GetAbilityName(31531), }, -- 
                [1] = { id = 40109, name = GetAbilityName(40109), }, -- 
                [2] = { id = 40116, name = GetAbilityName(40116), }, -- 
            },
        },
    },
    ["armor"] = {
        [1] = { -- Light Armor
            name = GetSkillLineNameById(24),
            [1] = { -- 
                [0] = { id = 29338, name = GetAbilityName(29338), }, -- 
                [1] = { id = 39186, name = GetAbilityName(39186), }, -- 
                [2] = { id = 39182, name = GetAbilityName(39182), }, -- 
            },
        },
        [2] = { -- Medium Armor
            name = GetSkillLineNameById(25),
            [1] = { -- 
                [0] = { id = 29556, name = GetAbilityName(29556), }, -- 
                [1] = { id = 39195, name = GetAbilityName(39195), }, -- 
                [2] = { id = 39192, name = GetAbilityName(39192), }, -- 
            },
        },
        [3] = { -- Heavy Armor
            name = GetSkillLineNameById(26),
            [1] = { -- 
                [0] = { id = 29552, name = GetAbilityName(29552), }, -- 
                [1] = { id = 39205, name = GetAbilityName(39205), }, -- 
                [2] = { id = 39197, name = GetAbilityName(39197), }, -- 
            },
        },
    },
    ["world"] = {
        [4] = { -- Soul Magic
            name = GetSkillLineNameById(72),
            [1] = { -- 
                [0] = { id = 39270, name = GetAbilityName(39270), }, -- 
                [1] = { id = 40420, name = GetAbilityName(40420), }, -- 
                [2] = { id = 40414, name = GetAbilityName(40414), }, -- 
            },
            [2] = { -- 
                [0] = { id = 26768, name = GetAbilityName(26768), }, -- 
                [1] = { id = 40328, name = GetAbilityName(40328), }, -- 
                [2] = { id = 40317, name = GetAbilityName(40317), }, -- 
            },
        },
        [5] = { -- Vampire
            name = GetSkillLineNameById(51),
            [1] = { -- 
                [0] = { id = 32624, name = GetAbilityName(32624), }, -- 
                [1] = { id = 38932, name = GetAbilityName(38932), }, -- 
                [2] = { id = 38931, name = GetAbilityName(38931), }, -- 
            },
            [2] = { -- 
                [0] = { id = 32893, name = GetAbilityName(32893), }, -- 
                [1] = { id = 38949, name = GetAbilityName(38949), }, -- 
                [2] = { id = 38956, name = GetAbilityName(38956), }, -- 
            },
            [3] = { -- 
                [0] = { id = 132141, name = GetAbilityName(132141), }, -- 
                [1] = { id = 134160, name = GetAbilityName(134160), }, -- 
                [2] = { id = 135841, name = GetAbilityName(135841), }, -- 
            },
            [4] = { -- 
                [0] = { id = 134583, name = GetAbilityName(134583), }, -- 
                [1] = { id = 135905, name = GetAbilityName(135905), }, -- 
                [2] = { id = 137259, name = GetAbilityName(137259), }, -- 
            },
            [5] = { -- 
                [0] = { id = 128709, name = GetAbilityName(128709), }, -- 
                [1] = { id = 137861, name = GetAbilityName(137861), }, -- 
                [2] = { id = 138097, name = GetAbilityName(138097), }, -- 
            },
            [6] = { -- 
                [0] = { id = 32986, name = GetAbilityName(32986), }, -- 
                [1] = { id = 38963, name = GetAbilityName(38963), }, -- 
                [2] = { id = 38965, name = GetAbilityName(38965), }, -- 
            },
        },
        [6] = { -- Werewolf
            name = GetSkillLineNameById(50),
            [1] = { -- 
                [0] = { id = 32455, name = GetAbilityName(32455), }, -- 
                [1] = { id = 39075, name = GetAbilityName(39075), }, -- 
                [2] = { id = 39076, name = GetAbilityName(39076), }, -- 
            },
            [2] = { -- 
                [0] = { id = 32632, name = GetAbilityName(32632), }, -- 
                [1] = { id = 39105, name = GetAbilityName(39105), }, -- 
                [2] = { id = 39104, name = GetAbilityName(39104), }, -- 
            },
            [3] = { -- 
                [0] = { id = 58310, name = GetAbilityName(58310), }, -- 
                [1] = { id = 58317, name = GetAbilityName(58317), }, -- 
                [2] = { id = 58325, name = GetAbilityName(58325), }, -- 
            },
            [4] = { -- 
                [0] = { id = 32633, name = GetAbilityName(32633), }, -- 
                [1] = { id = 39113, name = GetAbilityName(39113), }, -- 
                [2] = { id = 39114, name = GetAbilityName(39114), }, -- 
            },
            [5] = { -- 
                [0] = { id = 58405, name = GetAbilityName(58405), }, -- 
                [1] = { id = 58742, name = GetAbilityName(58742), }, -- 
                [2] = { id = 58798, name = GetAbilityName(58798), }, -- 
            },
            [6] = { -- 
                [0] = { id = 58855, name = GetAbilityName(58855), }, -- 
                [1] = { id = 58864, name = GetAbilityName(58864), }, -- 
                [2] = { id = 58879, name = GetAbilityName(58879), }, -- 
            },
        },
    },
    ["guild"] = {
        [2] = { -- Fighters Guild
            name = GetSkillLineNameById(45),
            [1] = { -- Dawnbreaker
                [0] = { id = 35713, name = GetAbilityName(35713), }, -- Dawnbreaker
                [1] = { id = 40161, name = GetAbilityName(40161), }, -- Flawless Dawnbreaker
                [2] = { id = 40158, name = GetAbilityName(40158), }, -- Dawnbreaker of Smiting
            },
            [2] = { -- 
                [0] = { id = 35721, name = GetAbilityName(35721), }, -- 
                [1] = { id = 40300, name = GetAbilityName(40300), }, -- 
                [2] = { id = 40336, name = GetAbilityName(40336), }, -- 
            },
            [3] = { -- 
                [0] = { id = 35737, name = GetAbilityName(35737), }, -- 
                [1] = { id = 40181, name = GetAbilityName(40181), }, -- 
                [2] = { id = 40169, name = GetAbilityName(40169), }, -- 
            },
            [4] = { -- Expert Hunter
                [0] = { id = 35762, name = GetAbilityName(35762), }, -- Expert Hunter
                [1] = { id = 40194, name = GetAbilityName(40194), }, -- Evil Hunter
                [2] = { id = 40195, name = GetAbilityName(40195), }, -- Camouflaged Hunter
            },
            [5] = { -- 
                [0] = { id = 35750, name = GetAbilityName(35750), }, -- 
                [1] = { id = 40382, name = GetAbilityName(40382), }, -- 
                [2] = { id = 40372, name = GetAbilityName(40372), }, -- 
            },
        },
        [3] = { -- Mages Guild
            name = GetSkillLineNameById(44),
            [1] = { -- 
                [0] = { id = 16536, name = GetAbilityName(16536), }, -- 
                [1] = { id = 40489, name = GetAbilityName(40489), }, -- 
                [2] = { id = 40493, name = GetAbilityName(40493), }, -- 
            },
            [2] = { -- Magelight
                [0] = { id = 30920, name = GetAbilityName(30920), }, -- Magelight
                [1] = { id = 40478, name = GetAbilityName(40478), }, -- Inner Light
                [2] = { id = 40483, name = GetAbilityName(40483), }, -- Radiant Magelight
            },
            [3] = { -- 
                [0] = { id = 28567, name = GetAbilityName(28567), }, -- 
                [1] = { id = 40457, name = GetAbilityName(40457), }, -- 
                [2] = { id = 40452, name = GetAbilityName(40452), }, -- 
            },
            [4] = { -- 
                [0] = { id = 31632, name = GetAbilityName(31632), }, -- 
                [1] = { id = 40470, name = GetAbilityName(40470), }, -- 
                [2] = { id = 40465, name = GetAbilityName(40465), }, -- 
            },
            [5] = { -- 
                [0] = { id = 31642, name = GetAbilityName(31642), }, -- 
                [1] = { id = 40445, name = GetAbilityName(40445), }, -- 
                [2] = { id = 40441, name = GetAbilityName(40441), }, -- 
            },
        },
        [4] = { -- Psijic Order
            name = GetSkillLineNameById(130),
            [1] = { -- Undo
                [0] = { id = 103478, name = GetAbilityName(103478), }, -- Undo
                [1] = { id = 103557, name = GetAbilityName(103557), }, -- Precognition
                [2] = { id = 103564, name = GetAbilityName(103564), }, -- Temporal Guard
            },
            [2] = { -- 
                [0] = { id = 103488, name = GetAbilityName(103488), }, -- 
                [1] = { id = 104059, name = GetAbilityName(104059), }, -- 
                [2] = { id = 104079, name = GetAbilityName(104079), }, -- 
            },
            [3] = { -- 
                [0] = { id = 103483, name = GetAbilityName(103483), }, -- 
                [1] = { id = 103571, name = GetAbilityName(103571), }, -- 
                [2] = { id = 103623, name = GetAbilityName(103623), }, -- 
            },
            [4] = { -- 
                [0] = { id = 103503, name = GetAbilityName(103503), }, -- 
                [1] = { id = 103706, name = GetAbilityName(103706), }, -- 
                [2] = { id = 103710, name = GetAbilityName(103710), }, -- 
            },
            [5] = { -- 
                [0] = { id = 103543, name = GetAbilityName(103543), }, -- 
                [1] = { id = 103747, name = GetAbilityName(103747), }, -- 
                [2] = { id = 103755, name = GetAbilityName(103755), }, -- 
            },
            [6] = { -- 
                [0] = { id = 103492, name = GetAbilityName(103492), }, -- 
                [1] = { id = 103652, name = GetAbilityName(103652), }, -- 
                [2] = { id = 103665, name = GetAbilityName(103665), }, -- 
            },
        },
        [6] = { -- Undaunted
            name = GetSkillLineNameById(55),
            [1] = { -- 
                [0] = { id = 39489, name = GetAbilityName(39489), }, -- 
                [1] = { id = 41967, name = GetAbilityName(41967), }, -- 
                [2] = { id = 41958, name = GetAbilityName(41958), }, -- 
            },
            [2] = { -- 
                [0] = { id = 39425, name = GetAbilityName(39425), }, -- 
                [1] = { id = 41990, name = GetAbilityName(41990), }, -- 
                [2] = { id = 42012, name = GetAbilityName(42012), }, -- 
            },
            [3] = { -- 
                [0] = { id = 39475, name = GetAbilityName(39475), }, -- 
                [1] = { id = 42056, name = GetAbilityName(42056), }, -- 
                [2] = { id = 42060, name = GetAbilityName(42060), }, -- 
            },
            [4] = { -- 
                [0] = { id = 39369, name = GetAbilityName(39369), }, -- 
                [1] = { id = 42138, name = GetAbilityName(42138), }, -- 
                [2] = { id = 42176, name = GetAbilityName(42176), }, -- 
            },
            [5] = { -- 
                [0] = { id = 39298, name = GetAbilityName(39298), }, -- 
                [1] = { id = 42028, name = GetAbilityName(42028), }, -- 
                [2] = { id = 42038, name = GetAbilityName(42038), }, -- 
            },
        },
    },
    ["ava"] = {
        [1] = { -- Assault
            name = GetSkillLineNameById(48),
            [1] = { -- 
                [0] = { id = 38563, name = GetAbilityName(38563), }, -- 
                [1] = { id = 40223, name = GetAbilityName(40223), }, -- 
                [2] = { id = 40220, name = GetAbilityName(40220), }, -- 
            },
            [2] = { -- 
                [0] = { id = 38566, name = GetAbilityName(38566), }, -- 
                [1] = { id = 40211, name = GetAbilityName(40211), }, -- 
                [2] = { id = 40215, name = GetAbilityName(40215), }, -- 
            },
            [3] = { -- 
                [0] = { id = 61503, name = GetAbilityName(61503), }, -- 
                [1] = { id = 61505, name = GetAbilityName(61505), }, -- 
                [2] = { id = 61507, name = GetAbilityName(61507), }, -- 
            },
            [4] = { -- 
                [0] = { id = 33376, name = GetAbilityName(33376), }, -- 
                [1] = { id = 40255, name = GetAbilityName(40255), }, -- 
                [2] = { id = 40242, name = GetAbilityName(40242), }, -- 
            },
            [5] = { -- 
                [0] = { id = 61487, name = GetAbilityName(61487), }, -- 
                [1] = { id = 61491, name = GetAbilityName(61491), }, -- 
                [2] = { id = 61500, name = GetAbilityName(61500), }, -- 
            },
        },
        [3] = { -- Support
            name = GetSkillLineNameById(67),
            [1] = { -- 
                [0] = { id = 38573, name = GetAbilityName(38573), }, -- 
                [1] = { id = 40237, name = GetAbilityName(40237), }, -- 
                [2] = { id = 40239, name = GetAbilityName(40239), }, -- 
            },
            [2] = { -- 
                [0] = { id = 38570, name = GetAbilityName(38570), }, -- 
                [1] = { id = 40229, name = GetAbilityName(40229), }, -- 
                [2] = { id = 40226, name = GetAbilityName(40226), }, -- 
            },
            [3] = { -- 
                [0] = { id = 38571, name = GetAbilityName(38571), }, -- 
                [1] = { id = 40232, name = GetAbilityName(40232), }, -- 
                [2] = { id = 40234, name = GetAbilityName(40234), }, -- 
            },
            [4] = { -- 
                [0] = { id = 61511, name = GetAbilityName(61511), }, -- 
                [1] = { id = 61536, name = GetAbilityName(61536), }, -- 
                [2] = { id = 61529, name = GetAbilityName(61529), }, -- 
            },
            [5] = { -- Revealing Flare
                [0] = { id = 61489, name = GetAbilityName(61489), }, -- Revealing Flare
                [1] = { id = 61519, name = GetAbilityName(61519), }, -- Lingering Flare
                [2] = { id = 61524, name = GetAbilityName(61524), }, -- Blinding Flare
            },
        },
    },
}
