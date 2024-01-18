VFS.Include("LuaRules/Configs/customcmds.h.lua")

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Order and State Panel Positions

-- Commands are placed in their position, with conflicts resolved by pushng those
-- with less priority (higher number = less priority) along the positions if
-- two or more commands want the same position.
-- The command panel is propagated left to right, top to bottom.
-- The state panel is propagate top to bottom, right to left.
-- * States can use posSimple to set a different position when the panel is in
--   four-row mode.
-- * Missing commands have {pos = 1, priority = 100}

local cmdPosDef = {
	-- Commands
	[CMD.STOP]          = {pos = 1, priority = 1},
	[CMD.FIGHT]         = {pos = 1, priority = 2},
	[CMD_RAW_MOVE]      = {pos = 1, priority = 3},
	[CMD.PATROL]        = {pos = 1, priority = 4},
	[CMD.ATTACK]        = {pos = 1, priority = 5},
	[CMD_JUMP]          = {pos = 1, priority = 6},
	[CMD_AREA_GUARD]    = {pos = 1, priority = 10},
	[CMD.AREA_ATTACK]   = {pos = 1, priority = 11},

	[CMD_UPGRADE_UNIT]  = {pos = 7, priority = -8},
	[CMD_UPGRADE_STOP]  = {pos = 7, priority = -7},
	[CMD_MORPH]         = {pos = 7, priority = -6},

	[CMD_STOP_NEWTON_FIREZONE] = {pos = 7, priority = -4},
	[CMD_NEWTON_FIREZONE]      = {pos = 7, priority = -3},

	[CMD.MANUALFIRE]      = {pos = 7, priority = 0.1},
	[CMD_PLACE_BEACON]    = {pos = 7, priority = 0.2},
	[CMD_ONECLICK_WEAPON] = {pos = 7, priority = 0.24},
	[CMD.STOCKPILE]       = {pos = 7, priority = 0.25},
	[CMD_ABANDON_PW]      = {pos = 7, priority = 0.3},
	[CMD_GBCANCEL]        = {pos = 7, priority = 0.4},
	[CMD_STOP_PRODUCTION] = {pos = 7, priority = 0.7},

	[CMD_BUILD]         = {pos = 7, priority = 0.8},
	[CMD_AREA_MEX]      = {pos = 7, priority = 1},
	[CMD.REPAIR]        = {pos = 7, priority = 2},
	[CMD.RECLAIM]       = {pos = 7, priority = 3},
	[CMD.RESURRECT]     = {pos = 7, priority = 4},
	[CMD.WAIT]          = {pos = 7, priority = 5},
	[CMD_FIND_PAD]      = {pos = 7, priority = 6},

	[CMD.LOAD_UNITS]    = {pos = 7, priority = 7},
	[CMD.UNLOAD_UNITS]  = {pos = 7, priority = 8},
	[CMD_RECALL_DRONES] = {pos = 7, priority = 10},

	[CMD_AREA_TERRA_MEX]= {pos = 13, priority = 1},
	[CMD_UNIT_SET_TARGET_CIRCLE] = {pos = 13, priority = 2},
	[CMD_UNIT_CANCEL_TARGET]     = {pos = 13, priority = 3},
	[CMD_EMBARK]        = {pos = 13, priority = 5},
	[CMD_DISEMBARK]     = {pos = 13, priority = 6},
	[CMD_EXCLUDE_PAD]   = {pos = 13, priority = 7},

	-- States
	[CMD.REPEAT]              = {pos = 1, priority = 1},
	[CMD_RETREAT]             = {pos = 1, priority = 2},

	[CMD.MOVE_STATE]          = {pos = 6, posSimple = 5, priority = 1},
	[CMD.FIRE_STATE]          = {pos = 6, posSimple = 5, priority = 2},
	[CMD_FACTORY_GUARD]       = {pos = 6, posSimple = 5, priority = 3},

	[CMD_SELECTION_RANK]      = {pos = 6, posSimple = 1, priority = 1.5},

	[CMD_PRIORITY]            = {pos = 1, priority = 10},
	[CMD_MISC_PRIORITY]       = {pos = 1, priority = 11},
	[CMD_CLOAK_SHIELD]        = {pos = 1, priority = 11.5},
	[CMD_WANT_CLOAK]          = {pos = 1, priority = 11.6},
	[CMD_WANT_ONOFF]          = {pos = 1, priority = 13},
	[CMD_PREVENT_BAIT]        = {pos = 1, priority = 13.1},
	[CMD_PREVENT_OVERKILL]    = {pos = 1, priority = 13.2},
	[CMD_FIRE_TOWARDS_ENEMY]  = {pos = 1, priority = 13.25},
	[CMD_FIRE_AT_SHIELD]      = {pos = 1, priority = 13.3},
	[CMD.TRAJECTORY]          = {pos = 1, priority = 14},
	[CMD_UNIT_FLOAT_STATE]    = {pos = 1, priority = 15},
	[CMD_TOGGLE_DRONES]       = {pos = 1, priority = 16},
	[CMD_PUSH_PULL]           = {pos = 1, priority = 17},
	[CMD.IDLEMODE]            = {pos = 1, priority = 18},
	[CMD_AP_FLY_STATE]        = {pos = 1, priority = 19},
	[CMD_AUTO_CALL_TRANSPORT] = {pos = 1, priority = 21},
}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Factory Units Panel Positions

-- These positions must be distinct

-- Locally defined intermediate positions to cut down repetitions.
local unitTypes = {
	CONSTRUCTOR     = {order = 1, row = 1, col = 1},
	RAIDER          = {order = 2, row = 1, col = 2},
	SKIRMISHER      = {order = 3, row = 1, col = 3},
	RIOT            = {order = 4, row = 1, col = 4},
	ASSAULT         = {order = 5, row = 1, col = 5},
	ARTILLERY       = {order = 6, row = 1, col = 6},

	-- note: row 2 column 1 purposefully skipped, since
	-- that allows giving facs Attack orders via hotkey
	WEIRD_RAIDER    = {order = 7, row = 2, col = 2},
	ANTI_AIR        = {order = 8, row = 2, col = 3},
	HEAVY_SOMETHING = {order = 9, row = 2, col = 4},
	SPECIAL         = {order = 10, row = 2, col = 5},
	UTILITY         = {order = 11, row = 2, col = 6},
}

-- Add build options to be shown in integral menu here
local factoryUnitPosDef = {
	armoutpost = {
		armrectr	=unitTypes.RIOT,
		armca		=unitTypes.RAIDER,
		armcs		=unitTypes.HEAVY_SOMETHING,
		armmex		=unitTypes.ANTI_AIR,
		armtech		=unitTypes.ARTILLERY,
		armmstor	=unitTypes.RIOT,
		armestor	=unitTypes.HEAVY_SOMETHING,
		armsolar	=unitTypes.SKIRMISHER,
		armwin		=unitTypes.SPECIAL,
		armmakr		=unitTypes.ARTILLERY,
		armrad		=unitTypes.RAIDER,
	},
	armvp = {
		armfav 		= unitTypes.RIOT,
		armflash 	= unitTypes.RAIDER,
		armstump 	= unitTypes.HEAVY_SOMETHING,
		armsam 		= unitTypes.ANTI_AIR,
		armmart 	= unitTypes.ARTILLERY,
		armlatnk 	= unitTypes.RIOT,
		armbull 	= unitTypes.HEAVY_SOMETHING,
		armyork 	= unitTypes.SKIRMISHER,
		armmanni   	= unitTypes.SPECIAL,
		armmerl  	= unitTypes.ARTILLERY,
		armintr  	= unitTypes.RAIDER,
		armjam  	= unitTypes.UTILITY,
	},

	factorycloak = {
		cloakcon          = unitTypes.CONSTRUCTOR,
		cloakraid         = unitTypes.RAIDER,
		cloakheavyraid    = unitTypes.WEIRD_RAIDER,
		cloakriot         = unitTypes.RIOT,
		cloakskirm        = unitTypes.SKIRMISHER,
		cloakarty         = unitTypes.ARTILLERY,
		cloakaa           = unitTypes.ANTI_AIR,
		cloakassault      = unitTypes.ASSAULT,
		cloaksnipe        = unitTypes.HEAVY_SOMETHING,
		cloakbomb         = unitTypes.SPECIAL,
		cloakjammer       = unitTypes.UTILITY,
	},
	factoryshield = {
		shieldcon         = unitTypes.CONSTRUCTOR,
		shieldscout       = unitTypes.WEIRD_RAIDER,
		shieldraid        = unitTypes.RAIDER,
		shieldriot        = unitTypes.RIOT,
		shieldskirm       = unitTypes.SKIRMISHER,
		shieldarty        = unitTypes.ARTILLERY,
		shieldaa          = unitTypes.ANTI_AIR,
		shieldassault     = unitTypes.ASSAULT,
		shieldfelon       = unitTypes.HEAVY_SOMETHING,
		shieldbomb        = unitTypes.SPECIAL,
		shieldshield      = unitTypes.UTILITY,
	},
	factoryveh = {
		vehcon            = unitTypes.CONSTRUCTOR,
		vehscout          = unitTypes.WEIRD_RAIDER,
		vehraid           = unitTypes.RAIDER,
		vehriot           = unitTypes.RIOT,
		vehsupport        = unitTypes.SKIRMISHER, -- Not really but nowhere else to go
		veharty           = unitTypes.ARTILLERY,
		vehaa             = unitTypes.ANTI_AIR,
		vehassault        = unitTypes.ASSAULT,
		vehheavyarty      = unitTypes.HEAVY_SOMETHING,
		vehcapture        = unitTypes.SPECIAL,
	},
	factoryhover = {
		hovercon          = unitTypes.CONSTRUCTOR,
		hoverraid         = unitTypes.RAIDER,
		hoverheavyraid    = unitTypes.WEIRD_RAIDER,
		hoverdepthcharge  = unitTypes.SPECIAL,
		hoverriot         = unitTypes.RIOT,
		hoverskirm        = unitTypes.SKIRMISHER,
		hoverarty         = unitTypes.ARTILLERY,
		hoveraa           = unitTypes.ANTI_AIR,
		hoverassault      = unitTypes.ASSAULT,
	},
	factorygunship = {
		gunshipcon        = unitTypes.CONSTRUCTOR,
		gunshipemp        = unitTypes.WEIRD_RAIDER,
		gunshipraid       = unitTypes.RAIDER,
		gunshipheavyskirm = unitTypes.ARTILLERY,
		gunshipskirm      = unitTypes.SKIRMISHER,
		gunshiptrans      = unitTypes.SPECIAL,
		gunshipheavytrans = unitTypes.UTILITY,
		gunshipaa         = unitTypes.ANTI_AIR,
		gunshipassault    = unitTypes.ASSAULT,
		gunshipkrow       = unitTypes.HEAVY_SOMETHING,
		gunshipbomb       = unitTypes.RIOT,
	},
	factoryplane = {
		planecon          = unitTypes.CONSTRUCTOR,
		planefighter      = unitTypes.RAIDER,
		bomberriot        = unitTypes.RIOT,
		bomberstrike      = unitTypes.SKIRMISHER,
		-- No Plane Artillery
		planeheavyfighter = unitTypes.WEIRD_RAIDER,
		planescout        = unitTypes.UTILITY,
		planelightscout   = unitTypes.ARTILLERY,
		bomberprec        = unitTypes.ASSAULT,
		bomberheavy       = unitTypes.HEAVY_SOMETHING,
		bomberdisarm      = unitTypes.SPECIAL,
	},
	factoryspider = {
		spidercon         = unitTypes.CONSTRUCTOR,
		spiderscout       = unitTypes.RAIDER,
		spiderriot        = unitTypes.RIOT,
		spiderskirm       = unitTypes.SKIRMISHER,
		-- No Spider Artillery
		spideraa          = unitTypes.ANTI_AIR,
		spideremp         = unitTypes.WEIRD_RAIDER,
		spiderassault     = unitTypes.ASSAULT,
		spidercrabe       = unitTypes.HEAVY_SOMETHING,
		spiderantiheavy   = unitTypes.SPECIAL,
	},
	factoryjump = {
		jumpcon           = unitTypes.CONSTRUCTOR,
		jumpscout         = unitTypes.WEIRD_RAIDER,
		jumpraid          = unitTypes.RAIDER,
		jumpblackhole     = unitTypes.RIOT,
		jumpskirm         = unitTypes.SKIRMISHER,
		jumparty          = unitTypes.ARTILLERY,
		jumpaa            = unitTypes.ANTI_AIR,
		jumpassault       = unitTypes.ASSAULT,
		jumpsumo          = unitTypes.HEAVY_SOMETHING,
		jumpbomb          = unitTypes.SPECIAL,
	},
	factorytank = {
		tankcon           = unitTypes. CONSTRUCTOR,
		tankraid          = unitTypes.WEIRD_RAIDER,
		tankheavyraid     = unitTypes.RAIDER,
		tankriot          = unitTypes.RIOT,
		tankarty          = unitTypes.ARTILLERY,
		tankheavyarty     = unitTypes.UTILITY,
		tankaa            = unitTypes.ANTI_AIR,
		tankassault       = unitTypes.ASSAULT,
		tankheavyassault  = unitTypes.HEAVY_SOMETHING,
	},
	factoryamph = {
		amphcon           = unitTypes.CONSTRUCTOR,
		amphraid          = unitTypes.RAIDER,
		amphimpulse       = unitTypes.WEIRD_RAIDER,
		amphriot          = unitTypes.RIOT,
		amphfloater       = unitTypes.SKIRMISHER,
		amphsupport       = unitTypes.ASSAULT,
		amphaa            = unitTypes.ANTI_AIR,
		amphassault       = unitTypes.HEAVY_SOMETHING,
		amphlaunch        = unitTypes.ARTILLERY,
		amphbomb          = unitTypes.SPECIAL,
		amphtele          = unitTypes.UTILITY,
	},
	factoryship = {
		shipcon           = unitTypes.CONSTRUCTOR,
		shiptorpraider    = unitTypes.RAIDER,
		shipriot          = unitTypes.RIOT,
		shipskirm         = unitTypes.SKIRMISHER,
		shiparty          = unitTypes.ARTILLERY,
		shipaa            = unitTypes.ANTI_AIR,
		shipscout         = unitTypes.WEIRD_RAIDER,
		shipassault       = unitTypes.ASSAULT,
		-- No Ship HEAVY_SOMETHING (yet)
		subraider         = unitTypes.SPECIAL,
	},
	pw_bomberfac = {
		bomberriot        = unitTypes.RIOT,
		bomberprec        = unitTypes.ASSAULT,
		bomberheavy       = unitTypes.HEAVY_SOMETHING,
		bomberdisarm      = unitTypes.SPECIAL,
	},
	pw_dropfac = {
		gunshiptrans      = unitTypes.SPECIAL,
		gunshipheavytrans = unitTypes.UTILITY,
	},
}

-- Factory plates copy their parents.
factoryUnitPosDef.platecloak   = Spring.Utilities.CopyTable(factoryUnitPosDef.factorycloak)
factoryUnitPosDef.plateshield  = Spring.Utilities.CopyTable(factoryUnitPosDef.factoryshield)
factoryUnitPosDef.plateveh     = Spring.Utilities.CopyTable(factoryUnitPosDef.factoryveh)
factoryUnitPosDef.platehover   = Spring.Utilities.CopyTable(factoryUnitPosDef.factoryhover)
factoryUnitPosDef.plategunship = Spring.Utilities.CopyTable(factoryUnitPosDef.factorygunship)
factoryUnitPosDef.plateplane   = Spring.Utilities.CopyTable(factoryUnitPosDef.factoryplane)
factoryUnitPosDef.platespider  = Spring.Utilities.CopyTable(factoryUnitPosDef.factoryspider)
factoryUnitPosDef.platejump    = Spring.Utilities.CopyTable(factoryUnitPosDef.factoryjump)
factoryUnitPosDef.platetank    = Spring.Utilities.CopyTable(factoryUnitPosDef.factorytank)
factoryUnitPosDef.plateamph    = Spring.Utilities.CopyTable(factoryUnitPosDef.factoryamph)
factoryUnitPosDef.plateship    = Spring.Utilities.CopyTable(factoryUnitPosDef.factoryship)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Construction Panel Structure Positions

-- These positions must be distinct

local factory_commands = {
	--ARMLAB
    armpw		= {order = 1, row = 1, col = 1},
    armrock		= {order = 2, row = 1, col = 2},
    armham		= {order = 3, row = 1, col = 3},
    armwar		= {order = 4, row = 1, col = 4},
    armmark		= {order = 5, row = 2, col = 1},
	--CORLAB
    corak		= {order = 1, row = 1, col = 1},
    corstorm	= {order = 2, row = 1, col = 2},
    corthud		= {order = 3, row = 1, col = 3},
    corpyro		= {order = 4, row = 1, col = 4},
    cormort		= {order = 5, row = 2, col = 1},

	--BOWHQ
	-- KERNHQ
	corck		= {order = 1, row = 1, col = 1},
	corcv		= {order = 2, row = 1, col = 2},
	corca		= {order = 3, row = 1, col = 3},
	cormuskrat	= {order = 4, row = 1, col = 4},
	kerndaemon	= {order = 5, row = 2, col = 1},
	-- ARMVP
	armfav 		= {order = 1, row = 1, col = 1},
	armflash 	= {order = 3, row = 1, col = 2},
	armstump 	= {order = 5, row = 1, col = 3},
	armsam 		= {order = 7, row = 1, col = 4},
	armmart		= {order = 9, row = 1, col = 5},
	-- CORVP
	corlevlr 		= {order = 2, row = 1, col = 1},
	corgator 		= {order = 4, row = 1, col = 2},
	corraid 		= {order = 6, row = 1, col = 3},
	cormist 		= {order = 8, row = 1, col = 4},
	corvrad 		= {order = 10, row = 1, col = 5},
	-- ARMMSTOR
	armck		= {order = 1, row = 1, col = 1},
	armcv		= {order = 2, row = 1, col = 2},
	armfark		= {order = 3, row = 1, col = 3},
	-- ARMAP
	armkam		= {order = 1, row = 1, col = 1},
	armfig		= {order = 2, row = 1, col = 2},
	armthund	= {order = 3, row = 1, col = 3},
	armanac		= {order = 4, row = 1, col = 4},
	armbrawl	= {order = 5, row = 1, col = 5},
	armkameyes	= {order = 6, row = 1, col = 6},
	armatlas	= {order = 7, row = 2, col = 1},
	-- CORAP
	corbw		= {order = 1, row = 1, col = 1},
	corveng		= {order = 2, row = 1, col = 2},
	corshad		= {order = 3, row = 1, col = 3},
	corsnap		= {order = 4, row = 1, col = 4},
	corape		= {order = 5, row = 1, col = 5},
	corkameyes	= {order = 6, row = 1, col = 6},
	corvalk		= {order = 7, row = 2, col = 1},
	--factorycloak      = {order = 1, row = 1, col = 1},
	--factoryshield     = {order = 2, row = 1, col = 2},
	--factoryveh        = {order = 3, row = 1, col = 3},
	--factoryhover      = {order = 4, row = 1, col = 4},
	--factorygunship    = {order = 5, row = 1, col = 5},
	--factoryplane      = {order = 6, row = 1, col = 6},
	--factoryspider     = {order = 7, row = 2, col = 1},
	--factoryjump       = {order = 8, row = 2, col = 2},
	--factorytank       = {order = 9, row = 2, col = 3},
	--factoryamph       = {order = 10, row = 2, col = 4},
	--factoryship       = {order = 11, row = 2, col = 5},
	--striderhub        = {order = 12, row = 2, col = 6},
	[CMD_BUILD_PLATE] = {order = 13, row = 3, col = 4},
}

local econ_commands = {
	armmoho		= {order = 1, row = 1, col = 1},
	armoutpost	= {order = 2, row = 1, col = 2},
	armtech2	= {order = 3, row = 1, col = 3},
	armmmkr		= {order = 4, row = 1, col = 4},
	armuwadves	= {order = 5, row = 1, col = 5},
	armuwadvms	= {order = 6, row = 1, col = 6},
	armfus		= {order = 7, row = 2, col = 1},
	armawin		= {order = 8, row = 2, col = 2},
	armarad		= {order = 9, row = 2, col = 3},
	armfort		= {order = 10, row = 2, col = 4},
	armdeva		= {order = 11, row = 2, col = 5},
	armanni_stub	= {order = 12, row = 2, col = 6},
	armbrtha_stub	= {order = 13, row = 3, col = 1},
	armalab			= {order = 14, row = 3, col = 2},
	armavp			= {order = 15, row = 3, col = 3},
	armaap			= {order = 16, row = 3, col = 4},
	armasy			= {order = 17, row = 3, col = 5},

	--
	--staticmex         = {order = 1, row = 1, col = 1},
	--energywind        = {order = 2, row = 2, col = 1},
	--energysolar       = {order = 3, row = 2, col = 2},
	--energygeo         = {order = 4, row = 2, col = 3},
	--energyfusion      = {order = 5, row = 2, col = 4},
	--energysingu       = {order = 6, row = 2, col = 5},
	--staticstorage     = {order = 7, row = 3, col = 1},
	--energypylon       = {order = 8, row = 3, col = 2},
	--staticcon         = {order = 9, row = 3, col = 3},
	--staticrearm       = {order = 10, row = 3, col = 4},
}

local defense_commands = {
	armdrag		= {order = 1, row = 1, col = 1},
	armllt		= {order = 2, row = 1, col = 2},
	armrl		= {order = 3, row = 1, col = 3},
	armpb		= {order = 4, row = 1, col = 4},
	armguard	= {order = 5, row = 1, col = 5},
	armptl		= {order = 6, row = 1, col = 6},
	armsy 		= {order = 7, row = 2, col = 1},
	armlab		= {order = 8, row = 2, col = 2},
	armvp 		= {order = 9, row = 2, col = 3},
	armap		= {order = 10, row = 2, col = 4},
	armpad		= {order = 11, row = 2, col = 5},
	armtide		= {order = 12, row = 2, col = 6},
	armuwmex	= {order = 13, row = 3, col = 1},
	armmls		= {order = 14, row = 3, col = 2},

	--turretlaser       = {order = 2, row = 1, col = 1},
	--turretmissile     = {order = 1, row = 1, col = 2},
	--turretriot        = {order = 2, row = 1, col = 3},
	--turretemp         = {order = 3, row = 1, col = 4},
	--turretgauss       = {order = 5, row = 1, col = 5},
	--turretheavylaser  = {order = 6, row = 1, col = 6},
	--
	--turretaaclose     = {order = 9, row = 2, col = 1},
	--turretaalaser     = {order = 10, row = 2, col = 2},
	--turretaaflak      = {order = 11, row = 2, col = 3},
	--turretaafar       = {order = 12, row = 2, col = 4},
	--turretaaheavy     = {order = 13, row = 2, col = 5},
	--
	--turretimpulse     = {order = 4, row = 3, col = 1},
	--turrettorp        = {order = 14, row = 3, col = 2},
	--turretheavy       = {order = 16, row = 3, col = 3},
	--turretantiheavy   = {order = 17, row = 3, col = 4},
	--staticshield      = {order = 18, row = 3, col = 5},
}

local special_commands = {
	--- ARMALAB
	armmav		= {order = 1, row = 1, col = 1},
	armaak		= {order = 2, row = 1, col = 2},
	armfboy		= {order = 3, row = 1, col = 3},
	armsptk		= {order = 4, row = 1, col = 4},
	armsnipe	= {order = 5, row = 2, col = 1},
	armscab		= {order = 6, row = 2, col = 2},
	--- CORALAB
	cormando	= {order = 1, row = 1, col = 1},
	coraak		= {order = 2, row = 1, col = 2},
	corcan		= {order = 3, row = 1, col = 3},
	corsktl		= {order = 4, row = 1, col = 4},
	cordefiler	= {order = 5, row = 2, col = 1},
	--- ARMAVP
	armlatnk		= {order = 1, row = 1, col = 1},
	armbull			= {order = 2, row = 1, col = 2},
	armyork			= {order = 3, row = 1, col = 3},
	armmanni		= {order = 4, row = 1, col = 4},
	armmerl			= {order = 5, row = 2, col = 1},
	armintr			= {order = 6, row = 2, col = 2},
	armjam			= {order = 7, row = 2, col = 3},
	--- CORAVP
	correap 		= {order = 1, row = 1, col = 1},
	corsent 		= {order = 2, row = 1, col = 2},
	corgol 			= {order = 3, row = 1, col = 3},
	corban 			= {order = 4, row = 1, col = 4},
	corst 			= {order = 5, row = 2, col = 1},
	cortrem 		= {order = 6, row = 2, col = 2},
	cormabm 		= {order = 7, row = 2, col = 3},
	--- OUTPOST
	armamd			= {order = 1, row = 1, col = 1},
	armsilo_stub	= {order = 2, row = 1, col = 2},
	armgate			= {order = 3, row = 1, col = 3},
	armasp			= {order = 4, row = 1, col = 4},
	armamb			= {order = 5, row = 2, col = 1},
	armemp			= {order = 6, row = 2, col = 2},
	armshltx_stub	= {order = 7, row = 2, col = 3},
	--- ARMAAP
	armhawk			= {order = 1, row = 1, col = 1},
	armpnix			= {order = 2, row = 1, col = 2},
	armblade		= {order = 3, row = 1, col = 3},
	armawac			= {order = 4, row = 1, col = 4},
	armdfly			= {order = 5, row = 2, col = 1},
	armliche		= {order = 6, row = 2, col = 2},
	--- CORAAP
	-- CORAAP
	corvamp		= {order = 1, row = 1, col = 1},
	corhurc		= {order = 2, row = 1, col = 2},
	corawac		= {order = 3, row = 1, col = 3},
	corcrw		= {order = 4, row = 1, col = 4},
	corstil		= {order = 5, row = 2, col = 1},
	corseah		= {order = 6, row = 2, col = 2},



	--
	--staticradar       = {order = 10, row = 1, col = 1},
	--staticjammer      = {order = 12, row = 1, col = 2},
	--staticheavyradar  = {order = 14, row = 1, col = 3},
	--staticmissilesilo = {order = 15, row = 1, col = 4},
	--staticantinuke    = {order = 16, row = 1, col = 5},
	--staticarty        = {order = 2, row = 2, col = 1},
	--staticheavyarty   = {order = 3, row = 2, col = 2},
	--staticnuke        = {order = 4, row = 2, col = 3},
	--zenith            = {order = 5, row = 2, col = 4},
	--raveparty         = {order = 6, row = 2, col = 5},
	--mahlazer          = {order = 7, row = 2, col = 6},
	[CMD_RAMP]        = {order = 16, row = 3, col = 1},
	[CMD_LEVEL]       = {order = 17, row = 3, col = 2},
	[CMD_RAISE]       = {order = 18, row = 3, col = 3},
	[CMD_RESTORE]     = {order = 19, row = 3, col = 4},
	[CMD_SMOOTH]      = {order = 20, row = 3, col = 5},
}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

-- Commands, units types on factory, factory tab unit,
return cmdPosDef, factoryUnitPosDef, factory_commands, econ_commands, defense_commands, special_commands

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
