-- $Id: icontypes.lua 4585 2009-05-09 11:15:01Z google frog $
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    icontypes.lua
--  brief:   icontypes definitions
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--This file is used by engine, it's just placed here so LuaUI can access it too
--------------------------------------------------------------------------------

local iconsPath = "LuaUI/Icons/"

--- iconID, baseIconSize
local unitIconTable = {
	air_generic=1.25,
	air_radar=1.1,
	air_bomber=1.75,
	air_empbomber=2,
	air_nukebomber=2,
	air_builder=1.25,
	air_fighter=1.4,
	air_gunshiplaser=1.2,
	air_gunshipmissile=1.2,
	daemon=1.5,
	drone_scout=0.9,
	drone_antibot=1.2,
	drone_missile=1.25,
	def_artillery=1.8,
	def_builder=1.4,
	def_cannon=1.5,
	def_flak=1.4,
	def_generic=0.8,
	def_laser=1.3,
	def_missile=1.4,
	def_plasma=1.5,
	def_nuke=1.6,
	generic_unit=0.5, --1
	bot_artillery=1.1,
	bot_assault=1,
	bot_builder=1.1,
	bot_explosive=1.1,
	bot_farc=1.1,
	bot_generic=0.8,
	bot_missile=1,
	bot_flak=1,
	bot_rezz=1,
	bot_neutron=1.15,
	bot_antinuke=1.25,
	bot_plasma=1.1,
	bot_radar=1.1,
	bot_rifle=0.9,
	structure_mine=0.5,
	structure_antinuke=1.5,
	structure_energy=1.5,
	structure_factory=1.7,
	structure_generic=0.5,
	structure_metal=1.25,
	structure_nuke=1.95,
	structure_radar=1.1,
	structure_shield=1.1,
	structure_tech=1.5,
	structure_pad=2, --1.25
	structure_hq=2, --1.25
	veh_antibot=1.5,
	veh_artillery=1.4,
	veh_assault=1.5,
	veh_builder=1.5,
	veh_farc=1.25,
	veh_flak=1.5,
	veh_generic=1.5,
	veh_missile=1.5,
	veh_neutron=1.5,
	veh_antinuke=2,
	veh_radar=1.5,
	veh_tank=1.6,
	sea_generic = 1,
	sea_builder = 1,
	sea_assault = 0.9,
	sea_missile = 1,
	sea_flak = 1.05,
	sea_plasma = 1.1,
	sub_generic = 0.9,
	sea_cannon = 1.15,
	sea_neutron = 1.25,
	sub_builder = 0.9,
	sub_rezz = 0.95,
	sub_cannon = 0.9,
}

local tierSizeMult = {
	[0]=1.1,
	[1]=1.25,
	[2]=1.4,
	[3]=1.6,
	[4]=2,
}

local icontypes = {
	default = {
		size = 1.0,
		radiusadjust = 1,
	},
	none = {
		size = 0,
		radiusadjust = 0,
	},
}
  
---- Eg: commanders
--	commander0 = {
--  	bitmap='icons/armcommander.dds',
--  	size=1.9,
-- 		distance=1.0,
--	},

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

return icontypes

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

