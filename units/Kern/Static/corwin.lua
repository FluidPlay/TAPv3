return {
	corwin = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildcostenergy = 170,
		buildcostmetal = 45,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 5,
		buildinggrounddecalsizey = 5,
		buildinggrounddecaltype = "corwin_aoplane.dds",
		buildpic = "CORWIN.DDS",
		buildtime = 1687,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 2 0",
		collisionvolumescales = "40 89 40",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Produces Energy",
		energystorage = 0.5,
		explodeas = "windboom",
		footprintx = 3,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 179,
		maxslope = 10,
		maxwaterdepth = 0,
		name = "Wind Generator",
		objectname = "Units/Kern/CORWIN",
		seismicsignature = 0,
		selfdestructas = "windboom",
		sightdistance = 273,
		usebuildinggrounddecal = true,
		windgenerator = 25,		-- max generated by spring wind system, true max is this + customparams wingen multiplier addition
		yardmap = "ooo ooo ooo",
		customparams = {
			removewait = true,
			removestop = true,
			bar_buildinggrounddecalsizex = 4.5,
			bar_buildinggrounddecalsizey = 4.5,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-0.00634765625 0.0963876586914 -0.0",
				collisionvolumescales = "47.8161621094 48.6615753174 44.0332336426",
				collisionvolumetype = "Box",
				damage = 107,
				description = "Wind Generator Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 27,
				object = "CORWIN_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 54,
				description = "Wind Generator Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 11,
				object = "4X4A",
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
				[1] = "windgen2",
			},
		},
	},
}
