return {
	corcs = {
		buildcostenergy = 2000,
		buildcostmetal = 200,
		builddistance = 200,
		builder = true,
		shownanospray = false,
		buildpic = "CORCS.DDS",
		buildtime = 3700,
		canmove = true,
		category = "ALL NOTLAND MOBILE NOTSUB SHIP NOWEAPON NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -7 0",
		collisionvolumescales = "26 26 79",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Tech Level 1",
		energymake = 7,
		energystorage = 50,
		explodeas = "mediumexplosiongeneric-builder",
		floater = true,
		footprintx = 3,
		footprintz = 3,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 975,
		metalmake = 0.1,
		metalstorage = 50,
		minwaterdepth = 15,
		movementclass = "BOAT43X3",
		name = "Construction Ship",
		objectname = "Units/Kern/CORCS",
		seismicsignature = 0,
		selfdestructas = "mediumexplosiongenericSelfd-builder",
		sightdistance = 286,
		terraformspeed = 1250,
		waterline = 0,
		workertime = 125,
		--move
		acceleration = 0.044,
		brakerate = 0.08,
		maxvelocity = 2.00,	
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 261,
		--end move
		buildoptions = {
            "corvp",
		},
		customparams = {

			area_mex_def = "coruwmex",
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.0 0.0 0.0374984741211",
				collisionvolumescales = "45.9999694824 17.25 80.0749969482",
				collisionvolumetype = "Box",
				damage = 690,
				description = "Construction Ship Wreckage",
				energy = 0.8*0,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				hitdensity = 100,
				metal = 0.8*169,
				object = "CORCS_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Construction Ship Heap",
				energy = 0.8*0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 0.8*66,
				object = "5X5C",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2-builder",
				"deathceg3-builder",
				"deathceg4-builder",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			repair = "repair2",
			underattack = "warning1",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "shcormov",
			},
			select = {
				[1] = "shcorsel",
			},
		},
	},
}