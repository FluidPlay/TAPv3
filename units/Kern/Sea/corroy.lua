return {
	corroy = {
		activatewhenbuilt = true,
		buildangle = 16384,
		buildcostenergy = 4800,
		buildcostmetal = 960,
		buildpic = "CORROY.DDS",
		buildtime = 10600,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON SHIP NOTSUB NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -5 0",
		collisionvolumescales = "34 34 80",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Destroyer",
		energymake = 1.9,
		energyuse = 1.9,
		explodeas = "mediumexplosiongeneric",
		floater = true,
		footprintx = 4,
		footprintz = 4,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 3950,
		minwaterdepth = 12,
		movementclass = "BOAT44X4",
		name = "Enforcer",
		nochasecategory = "VTOL",
		objectname = "Units/Kern/CORROY",
		seismicsignature = 0,
		selfdestructas = "mediumexplosiongenericSelfd",
		sightdistance = 500,
		sonardistance = 400,
		waterline = 0,
		--move
		acceleration = 0.03,
		brakerate = 0.051,
		turninplace = true,
		maxvelocity = 1.81,
		turninplaceanglelimit = 140,
		turnrate = 194,
		--end move
		customparams = {

		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.0580749511719 -0.062504465332 -0.201034545898",
				collisionvolumescales = "33.2652587891 20.5109710693 79.4415893555",
				collisionvolumetype = "Box",
				damage = 1680,
				description = "Enforcer Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				hitdensity = 100,
				metal = 0.8*577,
				object = "CORROY_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Enforcer Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 0.8*249,
				object = "5X5D",
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
			explosiongenerators = {
				[1] = "custom:barrelshot-medium",
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
				[1] = "shcormov",
			},
			select = {
				[1] = "shcorsel",
			},
		},
		weapondefs = {
			plasma = {
				accuracy = 512,
				areaofeffect = 64,
				avoidfeature = false,
				craterareaofeffect = 64,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-medium",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "HeavyCannon",
				noselfdamage = true,
				proximitypriority = -0.1,
				range = 700,
				reloadtime = 3.9,
				soundhit = "xplomed2",
				soundhitwet = "splssml",
				soundhitwetvolume = 0.5,
				soundstart = "cannhvy1",
				targetmoveerror = 0.1,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 336,
				damage = {
					bombers = 62,
					default = 530,
					fighters = 62,
					vtol = 62,
					subs = 5,
				},
			},
			depthcharge = {
				areaofeffect = 24,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.75,
				explosiongenerator = "custom:genericshellexplosion-medium-uw",
				flighttime = 3,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "DEPTHCHARGE",
				name = "DepthCharge",
				noselfdamage = true,
				predictboost = 0,
				range = 400,
				reloadtime = 3.9,
				soundhit = "xplodep2",
				soundstart = "torpedo1",
				startvelocity = 80,
				tolerance = 1000,
				tracks = true,
				turnrate = 4000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 20,
				weapontimer = 3,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 140,
				damage = {
					default = 212,
					subs = 283,
				},
				customparams = {
					bar_model = "cordepthcharge.s3o",
				}
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "PLASMA",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				badtargetcategory = "NOTSUB",
				def = "DEPTHCHARGE",
				maindir = "0 -1 0",
				maxangledif = 179,
				onlytargetcategory = "CANBEUW",
			},
		},
	},
}
