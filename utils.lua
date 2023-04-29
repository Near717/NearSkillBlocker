NEAR_SB.utils = {}
local addon = NEAR_SB
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

NEAR_SB.utils.color = {
    lightPink       = "|cCC99FF",
    white           = "|cFFFFFF",
    grey            = "|c626255",
    lightGrey       = "|cbcbcbc",
    red             = "|cFF0000",
    green           = "|c00FF00",
    blue            = "|c0000FF",
    yellow          = "|cFFFF00",
    lightYellow     = "|cFFFFCC",
    orange          = "|cFF6600",
    darkOrange      = "|cFFA500",
    brightOrange    = "|cE68A00",
    magenta         = "|cFF00FF",
}

NEAR_SB.utils.dbg = {
	default     = addon.shortTitle .. ': ',
	white       = addon.shortTitle .. ': ' .. addon.utils.color.white,
	grey        = addon.shortTitle .. ': ' .. addon.utils.color.grey,
	lightGrey   = addon.shortTitle .. ': ' .. addon.utils.color.lightGrey,
    open        = addon.utils.color.lightGrey .. '--------------------------------------------------',
    close       = addon.utils.color.grey .. '==================================================',
}
