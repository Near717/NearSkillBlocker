local addon = NEAR_SB
local dbg = NEAR_SB.utils.dbg
local sv = NEAR_SB.ASV

local function cmdMessageTypeExample()
	sv = sv or NEAR_SB.ASV

	local str = "Example message"

	if sv.cmdMessageType == 1 then
		d(dbg.white .. str)
	elseif sv.cmdMessageType == 2 then
		ZO_Alert(UI_ALERT_CATEGORY_ALERT, SOUNDS.GENERAL_ALERT_ERROR, str)
	elseif sv.cmdMessageType == 3 then
		if sv.debug then d(dbg.white .. "this should only show if debug mode is on") end
	end
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Addon settings panel
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function NEAR_SB.SetupSettings()
	local LAM2 = LibAddonMenu2
	sv = sv or NEAR_SB.ASV

	local libSkillBlockUpdateNeeded = false

	---------------------------------------------------------------------------------
	local choice		= ''
	local choice_class	= 'dk'
	---------------------------------------------------------------------------------
	local class_name	= NEAR_SB.classdata.name
	---------------------------------------------------------------------------------
	local class 		= NEAR_SB.skilldata.class
	-- local weapon 		= NEAR_SB.skilldata.weapon
	-- local armor 			= NEAR_SB.skilldata.armor
	-- local world 			= NEAR_SB.skilldata.world
	-- local guild 			= NEAR_SB.skilldata.guild
	-- local ava 			= NEAR_SB.skilldata.ava
	---------------------------------------------------------------------------------
	local sv_class		= NEAR_SB.ASV.skilldata.class
	-- local sv_weapon		= NEAR_SB.ASV.skilldata.weapon
	-- local sv_armor 		= NEAR_SB.ASV.skilldata.armor
	-- local sv_world 		= NEAR_SB.ASV.skilldata.world
	-- local sv_guild		= NEAR_SB.ASV.skilldata.guild
	-- local sv_ava			= NEAR_SB.ASV.skilldata.ava
	---------------------------------------------------------------------------------

	local function UpdateVars()
		-- d('block: '.. tostring((choice).block) .. ' msg: '.. tostring((choice).msg))
		-- d('block recast: '.. tostring((choice).block_recast) .. ' msg: '.. tostring((choice).msg))
		-- d('block pvp: '.. tostring((choice).pvp) .. ' msg: '.. tostring((choice).msg))
		libSkillBlockUpdateNeeded = true
	end

	local control_options = {}

	local function createDropdown(skillLine, sv_skillLine)
	    local dropdown = {
	        type = 'dropdown',
	        name = skillLine.name,
	        choices = {},
	        choicesValues = {},
	        getFunc = function() return choice end,
	        setFunc = function(v) choice = v end,
	    }

		for ability in ipairs(skillLine) do
	    	if type(ability) == 'number' then
				for morph = 0, 2 do
					table.insert(dropdown.choices, skillLine[ability][morph].name)
					table.insert(dropdown.choicesValues, sv_skillLine[ability][morph])
				end
			end
	    end

	    return dropdown
	end

	control_options.dk = {
	    [1] = createDropdown(class.Flame,		sv_class.Flame),	-- Flame
	    [2] = createDropdown(class.Draconic,	sv_class.Draconic),	-- Draconic
	    [3] = createDropdown(class.Earth,		sv_class.Earth),	-- Earth
	}
	control_options.sc = {
	    [1] = createDropdown(class.Dark,		sv_class.Dark),		-- Dark
	    [2] = createDropdown(class.Daedric,		sv_class.Daedric),	-- Daedric
	    [3] = createDropdown(class.Storm,		sv_class.Storm),	-- Storm
	}
	control_options.nb = {
	    [1] = createDropdown(class.Assassin,	sv_class.Assassin),	-- Assassin
	    [2] = createDropdown(class.Shadow,		sv_class.Shadow),	-- Shadow
	    [3] = createDropdown(class.Siphon,		sv_class.Siphon),	-- Siphon
	}
	control_options.wa = {
	    [1] = createDropdown(class.Animal,		sv_class.Animal),	-- Animal
	    [2] = createDropdown(class.Green,		sv_class.Green),	-- Green
	    [3] = createDropdown(class.Winter,		sv_class.Winter),	-- Winter
	}
	control_options.nm = {
	    [1] = createDropdown(class.Grave,		sv_class.Grave),	-- Grave
	    [2] = createDropdown(class.Bone,		sv_class.Bone),		-- Bone
	    [3] = createDropdown(class.Living,		sv_class.Living),	-- Living
	}
	control_options.tp = {
	    [1] = createDropdown(class.Spear,		sv_class.Spear),	-- Spear
	    [2] = createDropdown(class.Dawn,		sv_class.Dawn),		-- Dawn
	    [3] = createDropdown(class.Resto,		sv_class.Resto),	-- Resto
	}
	control_options.ar = {
	    [1] = createDropdown(class.Herald,		sv_class.Herald),	-- Herald
	    [2] = createDropdown(class.Soldier,		sv_class.Soldier),	-- Soldier
	    [3] = createDropdown(class.Curative,	sv_class.Curative),	-- Curative
	}

	for _, skillType in ipairs({ 'weapon', 'armor', 'world', 'guild', 'ava' }) do
		control_options[skillType] = {}
		local i = 0
		local sortedSkillLineIndices = {} -- Create a table to store the sorted indices

		for skillLineIndex, _ in pairs(addon.skilldata[skillType]) do
			table.insert(sortedSkillLineIndices, skillLineIndex)
		end

		table.sort(sortedSkillLineIndices) -- Sort the indices

		for _, skillLineIndex in ipairs(sortedSkillLineIndices) do
			i = i + 1
			control_options[skillType][i] = createDropdown(addon.skilldata[skillType][skillLineIndex], addon.ASV.skilldata[skillType][skillLineIndex])
		end
	end

	-- control_options.weapon = {
	--     [1] = createDropdown(weapon[1],			sv_weapon[1]),		-- Two Handed
	--     [2] = createDropdown(weapon[2],			sv_weapon[2]),		-- One Hand and Shield
	--     [3] = createDropdown(weapon[3],			sv_weapon[3]),		-- Dual Wield
	--     [4] = createDropdown(weapon[4],			sv_weapon[4]),		-- Bow
	--     [5] = createDropdown(weapon[5],			sv_weapon[5]),		-- Destruction Staff
	--     [6] = createDropdown(weapon[6],			sv_weapon[6]),		-- Restoration Staff
	-- }
	-- control_options.armor = {
	--     [1] = createDropdown(armor[1],			sv_armor[1]),		-- Light Armor
	--     [2] = createDropdown(armor[2],			sv_armor[2]),		-- Medium Armor
	--     [3] = createDropdown(armor[3],			sv_armor[3]),		-- Heavy Armor
	-- }
	-- control_options.world = {
	--     [1] = createDropdown(world[4],			sv_world[4]),		-- Soul Magic
	--     [2] = createDropdown(world[5],			sv_world[5]),		-- Vampire
	--     [3] = createDropdown(world[6],			sv_world[6]),		-- Werewolf
	-- }
	-- control_options.guild = {
	--     [1] = createDropdown(guild[2],			sv_guild[2]),		-- Fighters Guild
	--     [2] = createDropdown(guild[3],			sv_guild[3]),		-- Mages Guild
	--     [3] = createDropdown(guild[4],			sv_guild[4]),		-- Psijic Order
	--     [4] = createDropdown(guild[6],			sv_guild[6]),		-- Undaunted
	-- }
	-- control_options.ava = {
	--     [1] = createDropdown(ava[1],			sv_ava[1]),			-- Assault
	--     [2] = createDropdown(ava[3],			sv_ava[3]),			-- Support
	-- }

	local additional_control_options = {
		b_cast = {
			type	= 'checkbox',
			name	= GetString(NEARSB_LAM_co_bcast_name),
			getFunc = function() return (choice).block end,
			setFunc = function(v)
				(choice).block, (choice).msg.re_cast = v, true
				UpdateVars()
			end,
		},
		b_recast = {
			type	= 'checkbox',
			name	= GetString(NEARSB_LAM_co_brecast_name),
			warning = GetString(NEARSB_LAM_co_brecast_warning),
			getFunc = function() return (choice).block_recast end,
			setFunc = function(v)
				(choice).block_recast, (choice).msg.re_cast = v, true
				UpdateVars()
			end,
		},
		b_pvp = {
			type	= 'checkbox',
			name	= GetString(NEARSB_LAM_co_bpvp_name),
			tooltip	= GetString(NEARSB_LAM_co_bpvp_tooltip),
			getFunc = function() return (choice).pvp end,
			setFunc = function(v)
				(choice).pvp, (choice).msg.pvp = v, true
				UpdateVars()
			end,
		},
		b_onMaxCrux = {
			type	= 'checkbox',
			name	= GetString(NEARSB_LAM_co_bonMaxCrux_name),
			tooltip	= GetString(NEARSB_LAM_co_bonMaxCrux_tooltip),
			getFunc = function() return (choice).block_onMaxCrux end,
			setFunc = function(v)
				(choice).block_onMaxCrux, (choice).msg.re_cast = v, true
				UpdateVars()
			end,
			disabled = function()
				if choice_class == 'ar' and (choice).block_onMaxCrux ~= nil then
					return false
				else
					return true
				end
			end
		},
	}

	-- Merge the existing control_options and the additional_control_options
	for key, value in pairs(additional_control_options) do
	    control_options[key] = value
	end


	local panelData = {
		type 				= 'panel',
		name 				= addon.title,
		displayName 		= addon.title,
		author 				= addon.author,
		version 			= addon.version,
		slashCommand 		= '/skillblocker',
		registerForRefresh 	= true,
		registerForDefaults = true,
	}

	-- Check if the pannel of this addon closes and register/unregister the needed skill blocks with LibSkillBocker "once"
	NEAR_SB.LAM2SettingsPanel = LAM2:RegisterAddonPanel(addon.name, panelData)
	local function OnLamPanelClosed(panel)
		if panel ~= NEAR_SB.LAM2SettingsPanel or not libSkillBlockUpdateNeeded then return end
		libSkillBlockUpdateNeeded = false
		addon.Initialize()
	end

	local optionsTable = {
		{
			type	= 'checkbox',
			name	= GetString(NEARSB_LAM_supb_name),
			tooltip = GetString(NEARSB_LAM_supb_tooltip),
			getFunc = function() return sv.suppressBlock end,
			setFunc = function(v) sv.suppressBlock = v end,
			default = addon.defaults.suppressBlock,
		},
		{
			type	= 'checkbox',
			name	= GetString(NEARSB_LAM_supbr_name),
			tooltip = GetString(NEARSB_LAM_supbr_tooltip),
			getFunc = function() return sv.suppressBlockReset end,
			setFunc = function(v) sv.suppressBlockReset = v end,
			default = addon.defaults.suppressBlockReset,
		},
		{
			type	= 'checkbox',
			name	= GetString(NEARSB_LAM_bpvp_name),
			tooltip = GetString(NEARSB_LAM_bpvp_tooltip),
			getFunc = function() return sv.blockPvP end,
			setFunc = function(v) sv.blockPvP = v end,
			default = addon.defaults.blockPvP,
		},
		{
			type = 'dropdown',
			name = GetString(NEARSB_LAM_cmdmsgt_name),
			tooltip = GetString(NEARSB_LAM_cmdmsgt_tooltip),
			choices = { GetString(NEARSB_LAM_cmdmsgt_choices1), GetString(NEARSB_LAM_cmdmsgt_choices2), GetString(NEARSB_LAM_cmdmsgt_choices3) },
			choicesValues = { 1, 2, 3 },
			getFunc = function() return sv.cmdMessageType end,
			setFunc = function(v) sv.cmdMessageType = v cmdMessageTypeExample() end,
			default = addon.defaults.cmdMessageType,
		},
		{
			type	= 'checkbox',
			name	= GetString(NEARSB_LAM_cmdmsgs_name),
			tooltip = GetString(NEARSB_LAM_cmdmsgs_tooltip),
			getFunc = function() return sv.cmdMessageSound end,
			setFunc = function(v) sv.cmdMessageSound = v end,
			default = addon.defaults.cmdMessageSound,
		},
		{
			type	= 'checkbox',
			name	= GetString(NEARSB_LAM_msg_name),
			getFunc = function() return sv.message end,
			setFunc = function(v) sv.message = v end,
			default = addon.defaults.message,
		},
		{
			type	= 'checkbox',
			name	= GetString(NEARSB_LAM_showE_name),
			tooltip = GetString(NEARSB_LAM_showE_tooltip),
			getFunc = function() return sv.showError end,
			setFunc = function(v) sv.showError = v libSkillBlockUpdateNeeded = true end,
			default = addon.defaults.showError,
		},
		---------------------------------------------------------------------------------
		{
			type = 'header',
			name = GetString(NEARSB_LAM_skillsel_name),
		},
		---------------------------------------------------------------------------------
		-- Class
		---------------------------------------------------------------------------------
		{
			type = 'submenu',
			name = GetString(SI_SKILLTYPE1),
			controls = {
				{
					type			= 'dropdown',
					name			= GetString(NEARSB_LAM_classsel_name),
					choices			= {class_name[1], class_name[2], class_name[3], class_name[4], class_name[5], class_name[6], class_name[7]},
					choicesValues	= {'dk', 'sc', 'nb', 'wa', 'nm', 'tp', 'ar'},
					getFunc = function() return choice_class end,
					setFunc = function(v)
						choice_class = v

						NEARSB_LAM_DROPDOWN_CLASS1:UpdateChoices(control_options[choice_class][1].choices, control_options[choice_class][1].choicesValues)
						NEARSB_LAM_DROPDOWN_CLASS1.label:SetText(control_options[choice_class][1].name)

						NEARSB_LAM_DROPDOWN_CLASS2:UpdateChoices(control_options[choice_class][2].choices, control_options[choice_class][2].choicesValues)
						NEARSB_LAM_DROPDOWN_CLASS2.label:SetText(control_options[choice_class][2].name)

						NEARSB_LAM_DROPDOWN_CLASS3:UpdateChoices(control_options[choice_class][3].choices, control_options[choice_class][3].choicesValues)
						NEARSB_LAM_DROPDOWN_CLASS3.label:SetText(control_options[choice_class][3].name)
					end,
				},
				{
					type			= 'dropdown',
					reference		= 'NEARSB_LAM_DROPDOWN_CLASS1',
					name			= control_options[choice_class][1].name,
					choices			= control_options[choice_class][1].choices,
					choicesValues	= control_options[choice_class][1].choicesValues,
					getFunc = function() return choice end,
					setFunc = function(v) choice = v end,
				},
				{
					type			= 'dropdown',
					reference		= 'NEARSB_LAM_DROPDOWN_CLASS2',
					name			= control_options[choice_class][2].name,
					choices			= control_options[choice_class][2].choices,
					choicesValues	= control_options[choice_class][2].choicesValues,
					getFunc = function() return choice end,
					setFunc = function(v) choice = v end,
				},
				{
					type			= 'dropdown',
					reference		= 'NEARSB_LAM_DROPDOWN_CLASS3',
					name			= control_options[choice_class][3].name,
					choices			= control_options[choice_class][3].choices,
					choicesValues	= control_options[choice_class][3].choicesValues,
					getFunc = function() return choice end,
					setFunc	= function(v) choice = v end,
				},
				control_options.b_cast,
				control_options.b_recast,
				control_options.b_pvp,
				control_options.b_onMaxCrux,
			},
		},
		---------------------------------------------------------------------------------
		-- Weapon
		---------------------------------------------------------------------------------
		{
			type = 'submenu',
			name = GetString(SI_SKILLTYPE2),
			controls = {
				control_options.weapon[1],
				control_options.weapon[2],
				control_options.weapon[3],
				control_options.weapon[4],
				control_options.weapon[5],
				control_options.weapon[6],
				control_options.b_cast,
				control_options.b_recast,
				control_options.b_pvp,
			},
		},
		---------------------------------------------------------------------------------
		-- Armor
		---------------------------------------------------------------------------------
		{
			type = 'submenu',
			name = GetString(SI_SKILLTYPE3),
			controls = {
				control_options.armor[1],
				control_options.armor[2],
				control_options.armor[3],
				control_options.b_cast,
				control_options.b_recast,
				control_options.b_pvp,
			},
		},
		---------------------------------------------------------------------------------
		-- World
		---------------------------------------------------------------------------------
		{
			type = 'submenu',
			name = GetString(SI_SKILLTYPE4),
			controls = {
				control_options.world[1],
				control_options.world[2],
				control_options.world[3],
				control_options.b_cast,
				control_options.b_recast,
				control_options.b_pvp,
			},
		},
		---------------------------------------------------------------------------------
		-- Guild
		---------------------------------------------------------------------------------
		{
			type = 'submenu',
			name = GetString(SI_SKILLTYPE5),
			controls = {
				control_options.guild[1],
				control_options.guild[2],
				control_options.guild[3],
				control_options.guild[4],
				control_options.b_cast,
				control_options.b_recast,
				control_options.b_pvp,
			},
		},
		---------------------------------------------------------------------------------
		-- AvA
		---------------------------------------------------------------------------------
		{
			type = 'submenu',
			name = GetString(SI_SKILLTYPE6),
			controls = {
				control_options.ava[1],
				control_options.ava[2],
				control_options.b_cast,
				control_options.b_recast,
				control_options.b_pvp,
			},
		},
		---------------------------------------------------------------------------------
		{
			type = 'divider',
			width = 'full',
		},
		{
			type = 'submenu',
			name = GetString(NEARSB_LAM_reglist_name),
			controls = {
				{
					type = 'description',
					text = function() return NEAR_SB.registeredAbilityNames end,
				},
			},
		},
		{
			type = 'divider',
			width = 'full',
		},
		{
			type = 'description',
			text = GetString(NEARSB_LAM_cmd_text),
		},
		-- TODO: comment out:
		{
			type = 'divider',
			width = 'full',
		},
		{
			type	= 'checkbox',
			name	= 'Debug log',
			getFunc = function() return sv.debug end,
			setFunc = function(v) sv.debug = v end,
			default = addon.defaults.debug,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (init cast)',
			getFunc = function() return sv.debug_init_cast end,
			setFunc = function(v) sv.debug_init_cast = v end,
			default = addon.defaults.debug_init_cast,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (init recast)',
			getFunc = function() return sv.debug_init_recast end,
			setFunc = function(v) sv.debug_init_recast = v end,
			default = addon.defaults.debug_init_recast,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (init crux)',
			getFunc = function() return sv.debug_init_crux end,
			setFunc = function(v) sv.debug_init_crux = v end,
			default = addon.defaults.debug_init_crux,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (init pvp)',
			getFunc = function() return sv.debug_init_pvp end,
			setFunc = function(v) sv.debug_init_pvp = v end,
			default = addon.defaults.debug_init_pvp,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (pvp functions)',
			getFunc = function() return sv.debug_pvp end,
			setFunc = function(v) sv.debug_pvp = v end,
			default = addon.defaults.debug_pvp,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (recast functions)',
			getFunc = function() return sv.debug_recast end,
			setFunc = function(v) sv.debug_recast = v end,
			default = addon.defaults.debug_recast,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (crux functions)',
			getFunc = function() return sv.debug_crux end,
			setFunc = function(v) sv.debug_crux = v end,
			default = addon.defaults.debug_crux,
			warning = 'will flood chat with debug messages'
		},
	}
	LAM2:RegisterOptionControls(addon.name, optionsTable)

	CALLBACK_MANAGER:RegisterCallback("LAM-PanelClosed", OnLamPanelClosed)
end
