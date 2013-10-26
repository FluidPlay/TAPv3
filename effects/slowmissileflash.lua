-- slowmissileflash
return {
 
	["slowmissileflash"] = {
		usedefaultexplosions = false,
		spikepurple = {
			air                = false,
			class              = [[CExploSpikeProjectile]],
			count              = 1,
			ground             = true,
			water              = false,
			properties = {
				alwaysVisible      = true,
				length 				= 5,
				width					= 5,
				alpha					= 0.67,
				alphaDecay 			= 0.018,
				lengthGrowth			= 28,
				dir 					= [[0,2.5 i0.8, 0]],
				color 				= [[0.75, 0, 1]],
				pos					= [[0, 0,0]],
			},
		},
		spikered = {
			air                = false,
			class              = [[CExploSpikeProjectile]],
			count              = 1,
			ground             = true,
			water              = false,
			properties = {
				alwaysVisible      = true,
				length 				= 5,
				width					= 10,
				alpha					= 0.67,
				alphaDecay 			= 0.0135,
				lengthGrowth			= 2.8,
				dir 					= [[0,2.5 i0.8, 0]],
				color 				= [[1, 0, 0.5]],
				pos					= [[0, 0,0]],
			},
		},
		
		bigflash = {
			air                = false,
			class              = [[CSimpleGroundFlash]],
			count              = 1,
			ground             = true,
			water              = false,
			properties = {
				alwaysVisible      = true,
				size = 40,
				sizeGrowth = -9,
				ttl = 7,
				texture = [[groundflash]],
				colormap           = [[0 0 1 0.5		1 0 1 0.5		0 0 0 0.01]],
				pos					= [[0, 0,0]],
			},
		},		
		smallflash = {
			air                = false,
			class              = [[CSimpleGroundFlash]],
			count              = 1,
			ground             = true,
			water              = false,
			properties = {
				alwaysVisible      = true,
				size = 12,
				sizeGrowth = 0.25,
				ttl = 60,
				texture = [[groundflash]],
				colormap           = [[1 0 1 0.75		0.5 0 0 0.6		0 0 0 0.01]],
				pos					= [[0, 0,0]],
			},
		},
		poof02 = {
			air                = true,
			class              = [[CSimpleParticleSystem]],
			count              = 1,
			ground             = true,
			water              = true,
			properties = {
				airdrag            = 0.8,
				alwaysVisible      = true,
				colormap           = [[0.8 0 1 0.75	0.2 0.2 0.8 0.01	0.0 0.0 0.0 0.01]],
				directional        = false,
				emitrot            = 45,
				emitrotspread      = 32,
				emitvector         = [[0, 1, 0]],
				gravity            = [[0, -0.005, 0]],
				numparticles       = 8,
				particlelife       = 5,
				particlelifespread = 8,
				particlesize       = 10,
				particlesizespread = 0,
				particlespeed      = 8,
				particlespeedspread = 3,
				pos                = [[0, 2, 0]],
				sizegrowth         = 0.8,
				sizemod            = 1.0,
				texture            = [[randdots]],
				useairlos          = false,
			},
		},
		bluenova = {
			air                = true,
			class              = [[heatcloud]],
			count              = 1,
			ground             = true,
			water              = true,
			properties = {
				alwaysVisible      = true,
				heat               = 150,
				heatfalloff        = 10,
				maxheat            = 200,
				pos                = [[0, 5, 0]],
				size               = 20,
				sizegrowth         = -1,
				speed              = [[0, 0, 0]],
				texture            = [[pinknovaexplo]],
			},
		},
		smokeair = {
			air                = true,
			class              = [[CSimpleParticleSystem]],
			count              = 1,
			ground             = false,
			underwater         = 1,
			water              = false,
			properties = {
				alwaysVisible      = true,
				airdrag            = 0.8,
				colormap           = [[0.75 0.25 1 0.75  0.75 0.25 0.75 0.5  0 0 0 0.01]],
				directional        = false,
				emitrot            = 90,
				emitrotspread      = 0,
				emitvector         = [[0, 1, 0]],
				gravity            = [[0.0, 0.02, 0.0]],
				numparticles       = 5,
				particlelife       = 5,
				particlelifespread = 4,
				particlesize       = 18,
				particlesizespread = 10,
				particlespeed      = 5,
				particlespeedspread = 0,
				pos                = [[0.0, 4, 0.0]],
				sizegrowth         = -1.5,
				sizemod            = 1.1,
				texture            = [[smoke]],
				useairlos          = true,
			},
		},
		smokeground = {
			air                = false,
			class              = [[CSimpleParticleSystem]],
			count              = 1,
			ground             = true,
			underwater         = 1,
			water              = true,
			properties = {
				alwaysVisible      = true,
				airdrag            = 0.8,
				colormap           = [[0.75 0.25 1 0.75  0.75 0.25 0.75 0.5  0 0 0 0.01]],
				directional        = false,
				emitrot            = 30,
				emitrotspread      = 15,
				emitvector         = [[0, 1, 0]],
				gravity            = [[0.0, 0.02, 0.0]],
				numparticles       = 5,
				particlelife       = 5,
				particlelifespread = 4,
				particlesize       = 18,
				particlesizespread = 10,
				particlespeed      = 5,
				particlespeedspread = 0,
				pos                = [[0.0, 4, 0.0]],
				sizegrowth         = -1.5,
				sizemod            = 1.1,
				texture            = [[smoke]],
				useairlos          = true,
			},
		},
	},

}
