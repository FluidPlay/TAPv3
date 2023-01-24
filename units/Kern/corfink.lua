return {
	corfink = {
		acceleration = 0.30,
		brakerate = 0.0125,
		buildcostenergy = 1600,
		buildcostmetal = 50,
		buildpic = "CORFINK.DDS",
		buildtime = 2400,
		canfly = true,
		canmove = true,
		category = "ALL MOBILE NOTLAND NOTSUB VTOL NOWEAPON NOTSHIP LIGHTAIRSCOUT",
		collide = false,
		cruisealt = 110,
		description = "Scout Plane",
		energymake = 0.2,
		energyuse = 0.2,
		explodeas = "tinyExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 90,
		maxslope = 10,
		maxvelocity = 12,
		maxwaterdepth = 0,
		name = "Fink",
		objectname = "Units/Kern/CORFINK",
		radardistance = 1120,
		seismicsignature = 0,
		selfdestructas = "tinyExplosionGenericSelfd",
		selfdestructcountdown = 1,
		sightdistance = 835,
		turnrate = 850,
		blocking = false,
		customparams = {
		wingsurface = 0.25,
		description_long = "Fink is a cheap and fast-moving air scout, that is not armed with any weapons, but a huge line of sight. It is used to gain intelligence on what your enemy is planning, and where he keeps his most important units. Information is the most valuable asset on the battlefield, knowing your opponent's plans you can prepare your counter strikes early, making his moves inefficient. In lategame a constant stream of scouts helps your artillery units, improving their aim. They can also be used as a cheap distraction swarm that takes the fire from anti-air during bombing runs.",		
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
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
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "vtolcrac",
			},
		},
	},
}
