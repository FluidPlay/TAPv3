return {
	armkam = {
		acceleration = 0.15,
		brakerate = 0.375,
		buildcostenergy = 2400,
		buildcostmetal = 130,
		buildpic = "ARMKAM.DDS",
		buildtime = 5046,
		canfly = true,
		canmove = true,
		category = "ALL WEAPON NOTSUB VTOL",
		collide = true,
		cruisealt = 60,
		description = "Light Gunship",
		energyuse = 0.8,
		explodeas = "smallExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 435,
		maxslope = 10,
		maxvelocity = 6.16,
		maxwaterdepth = 0,
		name = "Banshee",
		nochasecategory = "VTOL",
		objectname = "Units/Bow/ARMKAM",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 520,
		turninplaceanglelimit = 360,
		turnrate = 700,
		blocking = false,
		customparams = {
			description_long = "The Banshee is a light gunship that can deal damage to land based units. It has very weak armor, that can be shattered by T1 anti air with ease, so always send them in packs and scout before striking. It is a weapon of surprise, try to keep it away from your foe's radars before attacking. If you succeed to put your gunships into an unguarded base, or over hostile Commander it will have no chance to survive. An effective attacking order is: nano towers -> AA towers,units -> eco and labs.",
			wingsurface = 0.25,
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
			crashExplosionGenerators = {
				"crashing-small",
				"crashing-small",
				"crashing-small2",
				"crashing-small3",
				"crashing-small3",
			}
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
				[1] = "vtolarmv",
			},
			select = {
				[1] = "vtolarac",
			},
		},
		weapondefs = {
			med_emg = {
				areaofeffect = 8,
				avoidfeature = false,
				burst = 3,
				burstrate = 0.25,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:plasmahit-small",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				intensity = 0.8,
				name = "Rapid-fire a2g plasma guns",
				noselfdamage = true,
				range = 350,
				reloadtime = 0.7,
				rgbcolor = "1 0.95 0.4",
				size = 2.25,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "brawlemg",
				sprayangle = 1024,
				tolerance = 6000,
				turret = false,
				weapontimer = 1,
				weapontype = "Cannon",
				weaponvelocity = 350,
				damage = {
					bombers = 1,
					commanders = 5,
					default = 9,
					fighters = 1,
					subs = 1,
					vtol = 1,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "MED_EMG",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}