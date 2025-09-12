# Skill Blocker

An addon for **The Elder Scrolls Online** that allows you to block unwanted skill casts.

## Dependencies

- [LibAddonMenu](https://www.esoui.com/downloads/info7-LibAddonMenu.html)
- [LibSkillBlocker](https://www.esoui.com/downloads/info2863-LibSkillBlocker.html)

⚠️ These libraries must be installed separately. Without them, the addon will not load.

## Compatibility

- Works with both **Keyboard/Mouse** and **Gamepad** modes.

## Features

- **Skill Blocking** - Select any active skill to block.
- **Recast Prevention** - Stop skills from being recast immediately.  
  *Requires the **Action Bar Timers** setting to be enabled.*  
- **Stack Control** - Prevent casting based on stack conditions.  
- **Combat Restrictions** - Apply blocks only while **in combat** or **out of combat**.  
- **PvP Mode** - Enable or disable blocking specifically in **PvP zones**.  
- **Proc Skills** - Special skills (e.g., *Crystal Fragments*) are only blocked if **not procced**.  

All options are **OFF by default**.

## Installation

1. [Download the latest release](https://github.com/Near717/NearSkillBlocker/releases/latest)
2. Extract it into your `AddOns` folder:
    - **Windows**:  
    ```%USERPROFILE%\Documents\Elder Scrolls Online\live\AddOns\```
    - **Mac**:  
    ```~/Documents/Elder Scrolls Online/live/AddOns/```

    ⚠️ Make sure the folder structure is correct. The path should end with: `...\AddOns\NearSkillBlocker\`

3. Install the required dependencies listed above.
4. Enable the addon from the **AddOns menu** at character select or in-game.

## Configuration

Open the addon settings panel.

From here, you can:

- Select specific skills to block;
- Toggle block options;
- Check currently blocked skills.

All options are disabled by default.

You can also use the slash command **/skillblocker** to access the settings.
