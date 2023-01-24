return {
	armuwfus = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 33500,
		buildcostmetal = 5200,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 6,
		buildinggrounddecalsizey = 6,
		buildinggrounddecaltype = "armuwfus_aoplane.dds",
		buildpic = "ARMUWFUS.DDS",
		buildtime = 99870,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR SURFACE",
		corpse = "DEAD",
		description = "Produces Energy / Storage",
		energymake = 1200,
		energystorage = 2500,
		explodeas = "fusionExplosion-uw",
		footprintx = 5,
		footprintz = 4,
		hidedamage = true,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 5000,
		maxslope = 10,
		minwaterdepth = 25,
		name = "Underwater Fusion Plant",
		objectname = "Units/Bow/ARMUWFUS",
		selfdestructas = "fusionExplosionSelfd-uw",
		sightdistance = 143,
		usebuildinggrounddecal = true,
		yardmap = "oooooooooooooooooooo",
		customparams = {
			bar_footprintx = 6,
			bar_footprintz = 4,
			bar_yardmap = "oooooo oooooo oooooo oooooo",
			techlevel = 2,
			removewait = true,
			removestop = true,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.252502441406 0.0765009643555 0.542335510254",
				collisionvolumescales = "80.2949829102 38.3076019287 56.9153289795",
				collisionvolumetype = "Box",
				damage = 3000,
				description = "Underwater Fusion Plant Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 20,
				hitdensity = 100,
				metal = 3034,
				object = "ARMUWFUS_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 1500,
				description = "Underwater Fusion Plant Heap",
				energy = 0,
				footprintx = 5,
				footprintz = 5,
				height = 4,
				hitdensity = 100,
				metal = 1214,
				object = "5X5C",
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
				[1] = "watfusn1",
			},
		},
	},
}
