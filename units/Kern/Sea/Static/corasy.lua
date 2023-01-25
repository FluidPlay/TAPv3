return {
	corasy = {
		acceleration = 0,
		brakerate = 0,
		buildcostenergy = 10000,
		buildcostmetal = 3100,
		builder = true,
		shownanospray = false,
		buildpic = "CORASY.DDS",
		buildtime = 15696,
		canmove = true,
		category = "ALL NOTLAND NOWEAPON NOTSUB NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -13 -3",
		collisionvolumescales = "192 61 180",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Produces Level 2 Ships",
		energystorage = 200,
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 12,
		footprintz = 12,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 5300,
		metalstorage = 200,
		minwaterdepth = 30,
		name = "Advanced Shipyard",
		objectname = "Units/Kern/CORASY",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 301.60001,
		terraformspeed = 1000,
		waterline = 32,
		workertime = 300,
		yardmap = "wCCCCCCCCCCwCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCwCCCCCCCCCCw",
		buildoptions = {
			"coracsub",
			"cormls",
			"corcrus",			
			"corshark",			
			"corarch",	
			"corsjam",			
			"corcarry",			
			"corbats",
			"cormship",
			"corblackhy",
			-- "corsnap",
			-- "corssub",
			-- "corhal",
			-- "corsok",
			-- "cormh",

			-- "corthovr",

		},
		customparams = {
			bar_collisionvolumeoffsets = "0 10 -2",
			bar_collisionvolumescales = "186 78 183",
			bar_waterline = 19,
			techlevel = 2,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0 -13 -3",
				collisionvolumescales = "192 61 180",
				collisionvolumetype = "Box",
				damage = 2650,
				description = "Advanced Shipyard Wreckage",
				energy = 0,
				footprintx = 12,
				footprintz = 12,
				height = 4,
				hitdensity = 100,
				metal = 2174,
				object = "CORASY_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			 pieceExplosionGenerators = { 
 				"deathceg3",
 				"deathceg4",
 			}, 
			explosiongenerators = {
				[1] = "custom:WhiteLight",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			unitcomplete = "untdone",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "pshpactv",
			},
		},
	},
}
