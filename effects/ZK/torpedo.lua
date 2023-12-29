-- torpedo_hit
-- torpedo_hit_main
-- torpedo_trail
-- torpedo_trail_big
-- hydromissile

return {
  ["torpedo_hit"] = {
    usedefaultexplosions = false,
    droplets = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true,
      underwater         = false,
      properties = {
        airdrag            = 0.95,
        alwaysvisible      = false,
        colormap           = [[0.75 0.75 1 1  0 0 0 0]],
        directional        = false,
        emitrot            = 85,
        emitrotspread      = 5,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.1, 0]],
        numparticles       = 16,
        particlelife       = 8,
        particlelifespread = 0,
        particlesize       = 12,
        particlesizespread = 8,
        particlespeed      = 2,
        particlespeedspread = 4,
        pos                = [[0, 15, 0]],
        sizegrowth         = 0.5,
        sizemod            = 1.0,
        texture            = [[randdots]],
      },
    },
    mainhit = {
      class              = [[CExpGenSpawner]],
      count              = 1,
      water              = true,
      underwater         = false,
      properties = {
        delay              = 0,
        dir                = [[dir]],
        explosiongenerator = [[custom:TORPEDO_HIT_MAIN]],
        pos                = [[0, 15, 0]],
      },
    },
    pikes = {
      air                = true,
      class              = [[explspike]],
      count              = 16,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        alpha              = 1,
        alphadecay         = 0.125,
        color              = [[1,0.5,0]],
        dir                = [[-4 r8, -4 r8, -4 r8]],
        length             = 1,
        width              = 8,
      },
    },
    watersphere = {
      class              = [[CSpherePartSpawner]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        alpha              = 0.25,
        alwaysvisible      = false,
        color              = [[0.8,0.8,1]],
        expansionspeed     = 4,
        ttl                = 8,
      },
    },
    collapsar = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = false,
      underwater         = true,
      water              = false,
      unit               = false,
      air                = false,
      properties = {
        airdrag            = 0.5,
        alwaysvisible      = false,
        colormap           = [[1 1 1 0.01   0.01 0.01 0.005 0.01]],
        directional        = true,
        emitrot            = 180,
        emitrotspread      = 180,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = [[1]],
        particlelife       = [[30]],
        particlelifespread = 2,
        particlesize       = [[30]],
        particlesizespread = 0.5,
        particlespeed      = [[0]],
        particlespeedspread = 0,
        pos                = [[0, 0, 0]],
        sizegrowth         = -0.2,
        sizemod            = 0.95,
        texture            = [[kfoam]],
      },
    },
    bubbles_rising = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = false,
      underwater         = true,
      air                = false,
      water              = false,
      unit               = false,
      properties = {
        airdrag            = 0.5,
        alwaysvisible      = false,
        colormap           = [[1 1 1 0.05
                               0.8 0.8 0.8 0.02
                               0.5 0.5 0.5 0.01
                               0.01 0.01 0.002 0.001]],
        directional        = true,
        emitrot            = 180,
        emitrotspread      = 180,
        emitvector         = [[dir]],
        gravity            = [[0, 0.2, 0]],
        numparticles       = [[20]],
        particlelife       = [[15]],
        particlelifespread = 20,
        particlesize       = [[0.5]],
        particlesizespread = 0.25,
        particlespeed      = [[10]],
        particlespeedspread = 20,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 0.995,
        texture            = [[bubble]],
      },
    },
    bubblesphere = {
      class              = [[CSpherePartSpawner]],
      count              = 1,
      water              = false,
      underwater         = true,
      properties = {
        alpha              = 0.25,
        alwaysvisible      = false,
        color              = [[0.8,0.8,1]],
        expansionspeed     = 4,
        ttl                = 10,
      },
    },
  },
  ["torpedo_hit_med"] = {
    usedefaultexplosions = false,
    droplets = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true,
      underwater         = false,
      properties = {
        airdrag            = 0.95,
        alwaysvisible      = false,
        colormap           = [[0.75 0.75 1 1  0 0 0 0]],
        directional        = false,
        emitrot            = 85,
        emitrotspread      = 5,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.1, 0]],
        numparticles       = 20,
        particlelife       = 8,
        particlelifespread = 0,
        particlesize       = 12,
        particlesizespread = 8,
        particlespeed      = 5,
        particlespeedspread = 6,
        pos                = [[0, 15, 0]],
        sizegrowth         = 0.6,
        sizemod            = 1.0,
        texture            = [[randdots]],
      },
    },
    mainhit = {
      class              = [[CExpGenSpawner]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        delay              = 0,
        dir                = [[dir]],
        explosiongenerator = [[custom:torpedo_hit_main_large]],
        pos                = [[0, 15, 0]],
      },
    },
    pikes = {
      air                = true,
      class              = [[explspike]],
      count              = 16,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        alpha              = 1,
        alphadecay         = 0.125,
        color              = [[1,0.5,0]],
        dir                = [[-4 r8, -4 r8, -4 r8]],
        length             = 1.1,
        width              = 10,
      },
    },
    watersphere = {
      class              = [[CSpherePartSpawner]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        alpha              = 0.25,
        alwaysvisible      = false,
        color              = [[0.8,0.8,1]],
        expansionspeed     = 5,
        ttl                = 8,
      },
    },
  },
  ["torpedo_hit_large_weak"] = {
    usedefaultexplosions = false,
    droplets = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.95,
        alwaysvisible      = false,
        colormap           = [[0.75 0.75 1 0.5  0 0 0 0]],
        directional        = false,
        emitrot            = 85,
        emitrotspread      = 5,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.1, 0]],
        numparticles       = 20,
        particlelife       = 8,
        particlelifespread = 0,
        particlesize       = 16,
        particlesizespread = 8,
        particlespeed      = 5,
        particlespeedspread = 6,
        pos                = [[0, 15, 0]],
        sizegrowth         = 0.8,
        sizemod            = 1.1,
        texture            = [[randdots]],
      },
    },
    mainhit = {
      class              = [[CExpGenSpawner]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        delay              = 0,
        dir                = [[dir]],
        explosiongenerator = [[custom:torpedo_hit_main_large_weak]],
        pos                = [[0, 15, 0]],
      },
    },
    watersphere = {
      class              = [[CSpherePartSpawner]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        alpha              = 0.2,
        alwaysvisible      = false,
        color              = [[0.8,0.8,0.8]],
        expansionspeed     = 6,
        ttl                = 10,
      },
    },
  },
  ["torpedo_hit_small_weak"] = {
    usedefaultexplosions = false,
    droplets = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.95,
        alwaysvisible      = false,
        colormap           = [[0.75 0.75 1 0.5  0 0 0 0]],
        directional        = false,
        emitrot            = 85,
        emitrotspread      = 5,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.1, 0]],
        numparticles       = 10,
        particlelife       = 6,
        particlelifespread = 0,
        particlesize       = 9,
        particlesizespread = 6,
        particlespeed      = 5,
        particlespeedspread = 6,
        pos                = [[0, 15, 0]],
        sizegrowth         = 0.8,
        sizemod            = 1.1,
        texture            = [[randdots]],
      },
    },
    mainhit = {
      class              = [[CExpGenSpawner]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        delay              = 0,
        dir                = [[dir]],
        explosiongenerator = [[custom:torpedo_hit_main_small_weak]],
        pos                = [[0, 15, 0]],
      },
    },
    watersphere = {
      class              = [[CSpherePartSpawner]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        alpha              = 0.18,
        alwaysvisible      = false,
        color              = [[0.8,0.8,0.8]],
        expansionspeed     = 6,
        ttl                = 4,
      },
    },
  },

  ["torpedo_hit_large"] = {
    usedefaultexplosions = false,
    droplets = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.95,
        alwaysvisible      = false,
        colormap           = [[0.75 0.75 1 1  0 0 0 0]],
        directional        = false,
        emitrot            = 85,
        emitrotspread      = 5,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.1, 0]],
        numparticles       = 20,
        particlelife       = 8,
        particlelifespread = 0,
        particlesize       = 16,
        particlesizespread = 8,
        particlespeed      = 5,
        particlespeedspread = 6,
        pos                = [[0, 15, 0]],
        sizegrowth         = 0.8,
        sizemod            = 1.1,
        texture            = [[randdots]],
      },
    },
    mainhit = {
      class              = [[CExpGenSpawner]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        delay              = 0,
        dir                = [[dir]],
        explosiongenerator = [[custom:torpedo_hit_main_large]],
        pos                = [[0, 15, 0]],
      },
    },
    pikes = {
      air                = true,
      class              = [[explspike]],
      count              = 16,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        alpha              = 1,
        alphadecay         = 0.125,
        color              = [[1,0.5,0]],
        dir                = [[-4 r8, -4 r8, -4 r8]],
        length             = 2,
        width              = 20,
      },
    },
    watersphere = {
      class              = [[CSpherePartSpawner]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        alpha              = 0.25,
        alwaysvisible      = false,
        color              = [[0.8,0.8,1]],
        expansionspeed     = 6,
        ttl                = 10,
      },
    },
  },
  ["torpedohithuge"] = {
    usedefaultexplosions = false,
    -- on land
    dirt1 = {
      air                = false,
      useairlos          = false,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = false,
      unit               = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[1 0.5 0.3 0.13    0.45 0.37 0.3 0.13	0.05 0.05 0.04 0.1  0 0 0 0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 45,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 20,
        particlelife       = 25,
        particlelifespread = 5,
        particlesize       = 2,
        particlesizespread = 3,
        particlespeed      = 0,
        particlespeedspread = 8,
        pos                = [[0, 2, 0]],
        sizegrowth         = 3,
        sizemod            = 1.0,
        texture            = [[dirtplosion2]],
      },
    },
    groundflash = {
      circlealpha        = 0.2,
      circlegrowth       = 4,
      flashalpha         = 0.9,
      flashsize          = 105,
      ttl                = 26,
      color = {
        [1]  = 1,
        [2]  = 0.60000002384186,
        [3]  = 0.10000000149012,
      },
    },
    sphere = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      underwater         = 0,
      water              = false,
      properties = {
        alpha              = 0.30,
        color              = [[1,0.6,0]],
        expansionspeed     = 5,
        ttl                = 14,
      },
    },
    -- underwater
    droplets = {
      class              = [[CSimpleParticleSystem]],
      count              = 3,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0.95,
        alwaysvisible      = false,
        colormap           = [[0.75 0.75 1 1  0 0 0 0]],
        directional        = false,
        emitrot            = 85,
        emitrotspread      = 5,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.1, 0]],
        numparticles       = 20,
        particlelife       = 10,
        particlelifespread = 6,
        particlesize       = 15,
        particlesizespread = 6,
        particlespeed      = 5,
        particlespeedspread = 6,
        pos                = [[0, 15, 0]],
        sizegrowth         = 0.8,
        sizemod            = 1.1,
        texture            = [[randdots]],
      },
    },
    mainhit = {
      class              = [[CExpGenSpawner]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        delay              = 0,
        dir                = [[dir]],
        explosiongenerator = [[custom:torpedo_hit_main_large]],
        pos                = [[0, 15, 0]],
      },
    },
    mainhithuge = {
      class              = [[CExpGenSpawner]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        delay              = 0,
        dir                = [[dir]],
        explosiongenerator = [[custom:torpedo_hit_main_huge]],
        pos                = [[0, 15, 0]],
      },
    },
    pikes = {
      air                = true,
      class              = [[explspike]],
      count              = 20,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        alpha              = 1,
        alphadecay         = 0.125,
        color              = [[1,0.5,0]],
        dir                = [[-4 r8, -4 r8, -4 r8]],
        length             = 2,
        width              = 12,
      },
    },
    watersphere = {
      class              = [[CSpherePartSpawner]],
      count              = 1,
      water              = true,
      underwater         = true,
      properties = {
        alpha              = 0.25,
        alwaysvisible      = false,
        color              = [[0.8,0.8,1]],
        expansionspeed     = 6,
        ttl                = 10,
      },
    },
  },
  ['torpedo_hit_wake'] = {
    torpedo_hit_wake = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 4,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        colormap           = [[0.45 0.45 0.5 0.5  0.045 0.045 0.05 0.05]],
        dir                = [[-0.1 r0.2, 1, -0.1 r0.2]],
        frontoffset        = 0,
        fronttexture       = [[wake]],
        length             = [[36 r24]],
        sidetexture        = [[null]],
        size               = [[9 r6]],
        sizegrowth         = 2,
        ttl                = 50,
      },
    },
  },
  ["torpedo_hit_main"] = {
    mainhit = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 4,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        colormap           = [[0.45 0.45 0.5 0.5  0.045 0.045 0.05 0.05]],
        dir                = [[-0.1 r0.2, 1, -0.1 r0.2]],
        frontoffset        = 0,
        fronttexture       = [[splashbase]],
        length             = [[36 r24]],
        sidetexture        = [[splashside]],
        size               = [[9 r6]],
        sizegrowth         = 1,
        ttl                = 12,
      },
    },
    wake = {
      class              = [[CExpGenSpawner]],
      count              = 1,
      water              = true,
      underwater         = true,
      unit               = true,
      air                = true,
      properties = {
        delay              = 0,
        dir                = [[dir]],
        explosiongenerator = [[custom:torpedo_hit_wake]],
        pos                = [[0, -15, 0]],
      },
    },
  },
  ["torpedo_hit_main_med"] = {
    mainhit = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 4,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        colormap           = [[0.45 0.45 0.5 0.5  0.045 0.045 0.05 0.05]],
        dir                = [[-0.1 r0.2, 1, -0.1 r0.2]],
        frontoffset        = 0,
        fronttexture       = [[splashbase]],
        length             = [[36 r24]],
        sidetexture        = [[splashside]],
        size               = [[9 r6]],
        sizegrowth         = 1.1,
        ttl                = 16,
      },
    },
  },
  ["torpedo_hit_main_large_weak"] = {
    mainhit = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 4,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        colormap           = [[0.45 0.45 0.5 0.35  0.045 0.045 0.05 0.05]],
        dir                = [[-0.1 r0.2, 1, -0.1 r0.2]],
        frontoffset        = 0,
        fronttexture       = [[splashbase]],
        length             = [[10 r20]],
        sidetexture        = [[splashside]],
        size               = [[20 r10]],
        sizegrowth         = 1.4,
        ttl                = 16,
      },
    },
  },
  ["torpedo_hit_main_small_weak"] = {
    mainhit = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 2,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        colormap           = [[0.45 0.45 0.5 0.35  0.045 0.045 0.05 0.05]],
        dir                = [[-0.1 r0.2, 1, -0.1 r0.2]],
        frontoffset        = 0,
        fronttexture       = [[splashbase]],
        length             = [[10 r20]],
        sidetexture        = [[splashside]],
        size               = [[8 r6]],
        sizegrowth         = 1.35,
        ttl                = 12,
      },
    },
  },
  ["torpedo_hit_main_large"] = {
    mainhit = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 4,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        colormap           = [[0.45 0.45 0.5 0.5  0.045 0.045 0.05 0.05]],
        dir                = [[-0.1 r0.2, 1, -0.1 r0.2]],
        frontoffset        = 0,
        fronttexture       = [[splashbase]],
        length             = [[48 r32]],
        sidetexture        = [[splashside]],
        size               = [[12 r8]],
        sizegrowth         = 1.4,
        ttl                = 24,
      },
    },
  },
  ["torpedo_hit_main_huge"] = {
    mainhit = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 4,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        colormap           = [[0.45 0.45 0.5 0.5  0.045 0.045 0.05 0.05]],
        dir                = [[-0.1 r0.2, 1, -0.1 r0.2]],
        frontoffset        = 0,
        fronttexture       = [[splashbase]],
        length             = [[48 r32]],
        sidetexture        = [[splashside]],
        size               = [[25 r8]],
        sizegrowth         = 1.4,
        ttl                = 24,
      },
    },
  },
  ["torpedo_trail"] = {
    alwaysvisible      = false,
    usedefaultexplosions = false,
    trail_water = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = true,
      water              = true,
      properties = {
        colormap           = [[0.6 0.6 0.6 0.01 0.4 0.4 0.4 0.01 0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 1,
        fronttexture       = [[wake]],
        length             = 1,
        sidetexture        = [[wake]],
        size               = 2,
        sizegrowth         = 0.4,
        ttl                = 10,
      },
    },
    trail_underwater = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = false,
      underwater         = true,
      water              = false,
      unit               = true,
      properties = {
        airdrag            = 0.65,
        alwaysvisible      = false,
        colormap           = [[1 1 1 0.01   0.01 0.01 0.005 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 0,
        emitvector         = [[-1 r2 -1 r2 -1 r2]],
        gravity            = [[0, 0.1, 0]],
        numparticles       = [[3 r2]],
        particlelife       = [[40]],
        particlelifespread = 20,
        particlesize       = [[2]],
        particlesizespread = 0.5,
        particlespeed      = [[0.5]],
        particlespeedspread = 0.5,
        pos                = [[r10 -5, r10 -5, r10 -5]],
        sizegrowth         = 0,
        sizemod            = 0.95,
        texture            = [[bubble]],
      },
    },
  },
  ["torpedo_trail_long"] = {
    alwaysvisible      = false,
    usedefaultexplosions = false,
    trail_water = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.6 0.6 0.6 0.01 0.4 0.4 0.4 0.01 0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 1,
        fronttexture       = [[wake]],
        length             = 1.2,
        sidetexture        = [[wake]],
        size               = 2,
        sizegrowth         = 0.4,
        ttl                = 10,
      },
    },
  },
  ["torptrailpurple"] = {
    alwaysvisible      = false,
    usedefaultexplosions = false,
    trail_water = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.9 0.5 0.9 0.5 0.8 0.4 0.8 0.05 0 0 0 0]],
        dir                = [[dir]],
        frontoffset        = 1,
        fronttexture       = [[wake]],
        length             = 1.3,
        sidetexture        = [[wake]],
        size               = 3,
        sizegrowth         = 0.2,
        ttl                = 15,
      },
    },

    spikes = {
      air                = false,
      class              = [[explspike]],
      count              = 4,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        alpha              = 0.8,
        alphadecay         = 0.5,
        color              = [[0.9, 0.5, 0.9]],
        dir                = [[-6 r12,-6 r12,-6 r12]],
        length             = 1,
        width              = 1,
      },
    },
  },
  ["torpedo_trail_big"] = {
    alwaysvisible      = false,
    usedefaultexplosions = false,
    trail_water = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.9 0.9 0.9 0.01 0.8 0.8 0.8 0.01 0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 1,
        fronttexture       = [[wake]],
        length             = 2,
        sidetexture        = [[wake]],
        size               = 3,
        sizegrowth         = 0.4,
        ttl                = 40,
      },
    },
  },
  ["hydromissile"] = {
    alwaysvisible      = false,
    usedefaultexplosions = false,
    trail_water = {
      air                = false,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = false,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.9 0.9 0.9 0.01 0.8 0.8 0.8 0.01 0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[wake]],
        length             = 4,
        sidetexture        = [[wake]],
        size               = 3,
        sizegrowth         = 0.4,
        ttl                = 40,
      },
    },
    groundflash = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 0,
      water              = false,
      properties = {
        colormap           = [[0.5 0.2 0.9 0.01 0.6 0.2 0.4 0.01 0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[muzzlefront]],
        length             = -20,
        sidetexture        = [[muzzleside]],
        size               = -9,
        sizegrowth         = 0.75,
        ttl                = 1,
      },
    },
  },
}
