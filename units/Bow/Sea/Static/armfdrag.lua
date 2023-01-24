return {
	armfdrag = {
		acceleration = 0,
		blocking = true,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 300,
		buildcostmetal = 15,
		buildpic = "ARMFDRAG.DDS",
		buildtime = 370,
		canattack = false,
		canrepeat = false,
		canrepeat = false,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -10 0",
		collisionvolumescales = "37 70 37",
		collisionvolumetype = "box",
		crushresistance = 250,
		description = "Shark's Teeth",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
		idleautoheal = 0,
		maxdamage = 4000,
		maxslope = 32,
		minwaterdepth = 1,
		name = "Shark's Teeth",
		objectname = "Units/Bow/ARMFDRAG",
		repairable = false,
		seismicsignature = 0,
		sightdistance = 1,
		waterline = 12,
		yardmap = "oooo",
		sfxtypes = { 
			pieceExplosionGenerators = { 
				"deathceg2", 
				"deathceg3", 
			}, 
		},
		customparams = {
			bar_waterline = 2,
			removewait = true,
			removestop = true,
		},
	},
}
