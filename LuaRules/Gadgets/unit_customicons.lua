--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    ico_customicons.lua
--  author:  Dave Rodgers
--
--  Copyright (C) 2007.
--  Licensed under the terms of the GNU GPL, v2 or later.
--
--------------------------------------------------------------------------------
-- This gadget checks through the attributes of each unitdef and assigns an appropriate icon for use in the minimap & zoomed out mode.
--
-- The reason that this is a gadget (it could also be a widget) and not part of weapondefs_post.lua/iconTypes.lua is the following:  
-- the default values for UnitDefs attributes that are not specified in our unitdefs lua files are only loaded into UnitDefs AFTER
-- unitdefs_post.lua and iconTypes.lua have been processed. For example, at the time of unitdefs_post, for most units ud.speed is  
-- nil and not a number, so we can't e.g. compare it to zero. Also, it's more modularized as a widget/gadget. 
-- [We could set the default values up in unitdefs_post to match engine defaults but thats just too hacky.]
--
-- Bluestone 27/04/2013
--------------------------------------------------------------------------------

function gadget:GetInfo()
  return {
    name      = "CustomIcons",
    desc      = "Sets custom unit icons for TAP",
    author    = "trepan, BD, TheFatController, updated by MaDDoX",
    date      = "Jan 8, 2007",
    license   = "GNU GPL, v2 or later",
    layer     = -100,
    enabled   = true  --  loaded by default?
  }
end

--------------------------------------------------------------------------------

if (gadgetHandler:IsSyncedCode()) then
  return false
end

--------------------------------------------------------------------------------

local wasLuaModUIEnabled = 0

--------------------------------------------------------------------------------

--function GetIconTypes()
--    return iconTypes
--end

local iconTypes

function gadget:Initialize()

	iconTypes = VFS.Include("LuaUI/Configs/icontypes.lua")

    --gadgetHandler:RegisterGlobal('GetIconTypes', GetIconTypes)
    if Spring.GetGameFrame() == 0 then
        --loadUnitIcons()
		iconTypes.Initialize()
    end

    --
    ---- Walls
    --Spring.SetUnitDefIcon(UnitDefNames["cordrag"].id, "tiny-square.user")
    --Spring.SetUnitDefIcon(UnitDefNames["armdrag"].id, "tiny-square.user")
    --Spring.SetUnitDefIcon(UnitDefNames["corfort"].id, "tiny-square.user")
    --Spring.SetUnitDefIcon(UnitDefNames["armfort"].id, "tiny-square.user")
    --Spring.SetUnitDefIcon(UnitDefNames["corfdrag"].id, "tiny-square.user")
    --Spring.SetUnitDefIcon(UnitDefNames["armfdrag"].id, "tiny-square.user")

end

--------------------------------------------------------------------------------

