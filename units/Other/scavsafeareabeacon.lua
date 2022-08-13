return {
	scavsafeareabeacon = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 85000,
		buildcostmetal = 3200,
		buildpic = "ARMEYES.DDS",
		buildtime = 750,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR SURFACE",
		cloakcost = 10,
		description = "Toxic cloud generator",
		energyuse = 3,
		explodeas = "scavcomexplosion",
		footprintx = 1,
		footprintz = 1,
		icontype = "building",
		idleautoheal = 5,
		idletime = 300,
		initcloaked = true,
		levelground = false,
		maxdamage = 2500,
		maxslope = 24,
		maxwaterdepth = 0,
		mincloakdistance = 250,
		name = "Spreader",
		objectname = "scav_safeareabeacon.s3o",
		--script = "scripts/ARMEYES.cob",
		seismicsignature = 200,
		sightdistance = 1560,
		stealth = true,
		waterline = 5,
		yardmap = "o",
		customparams = {
			model_author = "MaDDoX",
			--normaltex = "unittextures/Arm_normal.dds",
			--removestop = true,
			--removewait = true,
			--subfolder = "armbuildings/landutil",
		},
		sfxtypes = {
			pieceexplosiongenerators = {
				[1] = "deathceg2",
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
				[1] = "servsml6",
			},
			select = {
				[1] = "minesel1",
			},
		},
	},
}
