NEAR_SBD = {
	name		= "NearSkillBlockerDebug",
	title 		= "Near's Skill Blocker Debug Menu",
}
local addon = NEAR_SBD

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Addon settings panel
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
local function Init()
	local LAM = LibAddonMenu2
	local sv = NEAR_SB.ASV

	local panelData = {
		type				= "panel",
		name 				= addon.title,
		displayName 		= addon.title,
		registerForRefresh	= true,
		registerForDefaults	= true,
	}
	LAM:RegisterAddonPanel(addon.name, panelData)

	local optionsTable = {
		{
			type	= 'checkbox',
			name	= 'Debug log',
			getFunc = function() return sv.debug end,
			setFunc = function(v) sv.debug = v end,
			default = NEAR_SB.defaults.debug,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (init cast)',
			getFunc = function() return sv.debug_init_cast end,
			setFunc = function(v) sv.debug_init_cast = v end,
			default = NEAR_SB.defaults.debug_init_cast,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (init recast)',
			getFunc = function() return sv.debug_init_recast end,
			setFunc = function(v) sv.debug_init_recast = v end,
			default = NEAR_SB.defaults.debug_init_recast,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (init crux)',
			getFunc = function() return sv.debug_init_crux end,
			setFunc = function(v) sv.debug_init_crux = v end,
			default = NEAR_SB.defaults.debug_init_crux,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (init pvp)',
			getFunc = function() return sv.debug_init_pvp end,
			setFunc = function(v) sv.debug_init_pvp = v end,
			default = NEAR_SB.defaults.debug_init_pvp,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (pvp functions)',
			getFunc = function() return sv.debug_pvp end,
			setFunc = function(v) sv.debug_pvp = v end,
			default = NEAR_SB.defaults.debug_pvp,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (recast functions)',
			getFunc = function() return sv.debug_recast end,
			setFunc = function(v) sv.debug_recast = v end,
			default = NEAR_SB.defaults.debug_recast,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (crux functions)',
			getFunc = function() return sv.debug_crux end,
			setFunc = function(v) sv.debug_crux = v end,
			default = NEAR_SB.defaults.debug_crux,
			warning = 'will flood chat with debug messages'
		},
		{
			type	= 'checkbox',
			name	= 'Debug log (combat functions)',
			getFunc = function() return sv.debug_combat end,
			setFunc = function(v) sv.debug_combat = v end,
			default = NEAR_SB.defaults.debug_combat,
			warning = 'will flood chat with debug messages'
		},
	}
	LAM:RegisterOptionControls(addon.name, optionsTable)
end

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Addon loading
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
local function OnAddonLoaded(event, name)
	if name ~= addon.name then return end
	EVENT_MANAGER:UnregisterForEvent(addon.name, EVENT_ADD_ON_LOADED)
    Init()
end

EVENT_MANAGER:RegisterForEvent(addon.name, EVENT_ADD_ON_LOADED, OnAddonLoaded)
