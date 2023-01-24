return {
	armestor = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 4096,
		buildcostenergy = 1700,
		buildcostmetal = 170,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 5,
		buildinggrounddecalsizey = 5,
		buildinggrounddecaltype = "armestor_aoplane.dds",
		buildpic = "ARMESTOR.DDS",
		buildtime = 4119,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "42 34 42",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Increases Energy Storage (6000)",
		energystorage = 6000,
		explodeas = "energystorage",
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1700,
		maxslope = 10,
		maxwaterdepth = 0,
		name = "Karate Energy Storage",
		objectname = "Units/Bow/ARMESTOR",
		seismicsignature = 0,
		selfdestructas = "energystorageSelfd",
		sightdistance = 273,
		usebuildinggrounddecal = true,
		yardmap = "ooooooooo",
		customparams = {
			removewait = true,
			removestop = true,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0361251831055 -3.17626953112e-05 -0.330192565918",
				collisionvolumescales = "39.6697540283 34.9461364746 42.0973052979",
				collisionvolumetype = "Box",
				damage = 1020,
				description = "Energy Storage Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 40,
				hitdensity = 100,
				metal = 103,
				object = "ARMESTOR_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 510,
				description = "Energy Storage Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 41,
				object = "4X4C",
                collisionvolumescales = "85.0 14.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "storngy1",
			},
		},
	},
}
