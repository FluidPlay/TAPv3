return {
	corck = {
		acceleration = 0.456,
		brakerate = 2.85,
		buildcostenergy = 1700,
		buildcostmetal = 120,
		builddistance = 130,
		builder = true,
		shownanospray = false,
		buildpic = "CORCK.DDS",
		buildtime = 3551,
		canmove = true,
		category = "KBOT MOBILE ALL NOTSUB NOWEAPON NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 0 -1",
		collisionvolumescales = "25 31 25",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Tech Level 1",
		energymake = 7,
		energystorage = 50,
		energyuse = 7,
		explodeas = "smallexplosiongeneric-builder",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 590,
		maxslope = 20,
		maxvelocity = 1.15,
		maxwaterdepth = 25,
		metalmake = 0.07,
		metalstorage = 50,
		movementclass = "KBOT3",
		name = "Construction Kbot",
		objectname = "Units/Kern/CORCK",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-builder",
		sightdistance = 299,
		terraformspeed = 450,
		turninplace = 1,
		turninplaceanglelimit = 60,
		turninplacespeedlimit = 0.759,
		turnrate = 1045,
		upright = true,
		workertime = 80,
		buildoptions = {
			"corsolar",
			"coradvsol",
			"corwin",
			"corgeo",
			"cormstor",
			"corestor",
			"cormex",
			"corexp",
			"cormakr",
			"coralab",
			"corlab",
			"corvp",
			"corap",
			"corhp",
			"cornanotc",
			"coreyes",
			"corrad",
			"cordrag",
			"cormaw",
			"corllt",
			"corhllt",
			"corhlt",
			"corpun",
			"corrl",
			"corerad",
			"cordl",
			"corjamt",
            "corjuno",
			"corsy",
		},
		customparams = {
			description_long = "A construction Kbot is able to build basic T1 structures like the ones made by the Commander. Moreover it can build some more advanced land and air defense towers, advanced solar generators and most importantly the T2 Kbot lab. It is slightly slower and weaker than vehicle constructor, but it can climb stepper hills, so it is effective in expansion on mountainous terrain. Each Construction Kbot increases the player's energy and metal storage capacity by 50. It is wise to use pairs of cons for expansion, so they can heal each other and build defensive structures faster. This makes them immune to light assault units like fleas/jeffys.",
			area_mex_def = "cormex",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-0.363754272461 2.60498046867e-05 -3.98596954346",
				collisionvolumescales = "23.7274780273 30.2996520996 30.1248321533",
				collisionvolumetype = "Box",
				damage = 454,
				description = "Construction Kbot Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 73,
				object = "CORCK_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 277,
				description = "Construction Kbot Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 29,
				object = "2X2F",
                collisionvolumescales = "35.0 4.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg3-builder",
				"deathceg2-builder",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture2",
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
				[1] = "kbcormov",
			},
			select = {
				[1] = "kbcorsel",
			},
		},
	},
}
