--[[ engineoptions moved to modoptions for ease of use/maintenance
all *options files are for lobby only anyway, no effect on game ]]
--return {}

local options = {
	{
		key = "tap_others",
		name = "TA Prime - Other Settings",
		name = "TA Prime - Other Settings",
		type = "section",
	},
	{
		key = 'MaxUnits',
		name = 'Max units',
		desc = 'Maximum number of units (including buildings) for each team allowed at the same time',
		type = 'number',
		def = 2000,
		min = 1,
		max = 10000, --- engine caps at lower limit if more than 3 team are ingame
		step = 1, -- quantization is aligned to the def value, (step <= 0) means that there is no quantization
		section = "tap_options",

	},
	--{
	--	key = "pathfinder",
	--	name = "Pathfinder",
	--	desc = "Switch Pathfinding System",
	--	type = "list",
	--	def = "normal", --"qtpfs",
	--	section = "tap_others",
	--	items = {
	--		{ key = "normal", name = "Normal", desc = "Spring vanilla pathfinder" },
	--		{ key = "qtpfs", name = "QuadTree", desc = "Experimental quadtree based pathfinder" },
	--	},
	--},
	{
		key = "startmetal",
		name = "Starting metal",
		desc = "Determines amount of metal and metal storage that each player will start with",
		type = "number",
		section = "StartingResources",
		def = 10000,
		min = 0,
		max = 10000,
		step = 1,
	},
	{
		key = "startenergy",
		name = "Starting energy",
		desc = "Determines amount of energy and energy storage that each player will start with",
		type = "number",
		section = "StartingResources",
		def = 10000,
		min = 0,
		max = 10000,
		step = 1,
	},
}

return options
