NEAR_SB.defaults = {}
local addon		= NEAR_SB
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

NEAR_SB.defaults = {
    debug = false,
    debug_init = false,
    debug_init_cast = false,
    debug_init_recast = false,
    debug_init_pvp = false,
    debug_init_crux = false,
    debug_recast = false,
    debug_pvp = false,
    debug_crux = false,
    message = false,
    blockPvP = true,
    showError = true,
    suppressBlock = false,
    suppressBlockReset = false,
    cmdMessageType = 1,
    cmdMessageSound = true,
}

NEAR_SB.defaults.skilldata = {}  -- Toggle block skills/messages

local function createSkillEntry(addCrux)
    local data = { block = false, block_recast = false, pvp = true, msg = { re_cast = false, pvp = true, } }

    if addCrux then
        data.block_onMaxCrux = false
        data.block_onNotMaxCrux = false
    end

    return {
        [0] = data,
        [1] = data,
        [2] = data
    }
end

for _, skillType in ipairs({ 'class', 'weapon', 'armor', 'world', 'guild', 'ava' }) do
    NEAR_SB.defaults.skilldata[skillType] = {}

    for skillLine, v in pairs(addon.skilldata[skillType]) do
        NEAR_SB.defaults.skilldata[skillType][skillLine] = {}

        local addCrux
        if skillLine == 'Herald' or skillLine == 'Soldier' or skillLine == 'Curative' then
            addCrux = true
        end

        for ability in pairs(v) do
            if type(ability) == 'number' then
                NEAR_SB.defaults.skilldata[skillType][skillLine][ability] = createSkillEntry(addCrux)
            end
        end

    end
end
