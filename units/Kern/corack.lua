return {
	corack = {
		acceleration = 0.408,
		brakerate = 2.55,
		buildcostenergy = 7000,
		buildcostmetal = 410,
		builddistance = 136,
		builder = true,
		shownanospray = false,
		buildpic = "CORACK.DDS",
		buildtime = 9709,
		canmove = true,
		category = "KBOT MOBILE ALL NOTSUB NOWEAPON NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "22 33 25",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Tech Level 2",
		energymake = 14,
		energystorage = 100,
		energyuse = 14,
		explodeas = "smallexplosiongeneric-builder",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 900,
		maxslope = 20,
		maxvelocity = 1.1,
		maxwaterdepth = 25,
		metalmake = 0.14,
		metalstorage = 100,
		movementclass = "KBOT3",
		name = "Advanced Construction Kbot",
		objectname = "Units/Kern/CORACK",
		radardistance = 50,
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd-builder",
		sightdistance = 318.5,
		terraformspeed = 900,
		turninplace = 1,
		turninplaceanglelimit = 60,
		turninplacespeedlimit = 0.726,
		turnrate = 935,
		upright = true,
		workertime = 180,
		buildoptions = {
		},
		customparams = {
			techlevel = 2,
			area_mex_def = "cormoho",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -1.11450195313e-05 -6.82949829102",
				collisionvolumescales = "22.0 23.11277771 24.3265991211",
				collisionvolumetype = "Box",
				damage = 800,
				description = "Advanced Construction Kbot Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 207,
				object = "CORACK_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 600,
				description = "Advanced Construction Kbot Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 83,
				object = "2X2B",
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
				"deathceg2-builder",
				"deathceg3-builder",
				"deathceg4-builder",
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