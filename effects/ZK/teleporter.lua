-- teleport_out
-- teleport_in
-- teleport_progress

return {
  ["teleport_in"] = {
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 1,
        colormap           = [[0 .8 1 .1   0 0 0 0]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 120,
        emitvector         = [[0,1,0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 3,
        particlelife       = 16,
        particlelifespread = 3,
        particlesize       = 1,
        particlesizespread = 0,
        particlespeed      = .1,
        particlespeedspread = 0,
        pos                = [[0, 3, 0]],
        sizegrowth         = 16,
        sizemod            = 1,
        texture            = [[chargeparticles]],
      },
    },
    burst = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        delay              = 0,
        explosiongenerator = [[custom:teleport_burst]],
        pos                = [[0 0 0]],
      },
    },
    groundflash = {
      circlealpha        = 0,
      circlegrowth       = 0,
      flashalpha         = 0.5,
      flashsize          = 90,
      ttl                = 40,
      color = {
        [1]  = 1,
        [2]  = 1,
        [3]  = 0,
      },
    },
  },
  ["teleport_progress"] = {
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 1,
        colormap           = [[0 .8 1 .1   0 0 0 0]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 120,
        emitvector         = [[0,1,0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 16,
        particlelifespread = 3,
        particlesize       = 60,
        particlesizespread = 30,
        particlespeed      = .1,
        particlespeedspread = 0,
        pos                = [[0, 3, 0]],
        sizegrowth         = -6,
        sizemod            = 1,
        texture            = [[chargeparticles]],
      },
    },
  },
  ["teleport_out"] = {
    sparks = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 1,
        colormap           = [[0 .8 1 .1   0 0 0 0]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 120,
        emitvector         = [[0,1,0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 3,
        particlelife       = 15,
        particlelifespread = 0,
        particlesize       = 160,
        particlesizespread = 80,
        particlespeed      = .1,
        particlespeedspread = 0,
        pos                = [[0, 3, 0]],
        sizegrowth         = -17,
        sizemod            = 1,
        texture            = [[chargeparticles]],
      },
    },
    white = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 1,
        colormap           = [[1 1 1 0.1   0 0 0 0]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 120,
        emitvector         = [[0,1,0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 8,
        particlelifespread = 0,
        particlesize       = 60,
        particlesizespread = 30,
        particlespeed      = .1,
        particlespeedspread = 0,
        pos                = [[0, 2.5, 0]],
        sizegrowth         = -4,
        sizemod            = 1,
        texture            = [[burncircle]],
      },
    },
    teal = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 1,
        colormap           = [[0 1 1 0.1   0 0 0 0]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 120,
        emitvector         = [[0,1,0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 10,
        particlelifespread = 0,
        particlesize       = 80,
        particlesizespread = 40,
        particlespeed      = .1,
        particlespeedspread = 0,
        pos                = [[0, 2, 0]],
        sizegrowth         = -4,
        sizemod            = 1,
        texture            = [[burncircle]],
      },
    },
    black = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 1,
        colormap           = [[0 0 0 0   0 0 0 1   0 0 0 0]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 120,
        emitvector         = [[0,1,0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 1,
        particlelife       = 35,
        particlelifespread = 0,
        particlesize       = 80,
        particlesizespread = 40,
        particlespeed      = .1,
        particlespeedspread = 0,
        pos                = [[0, 1, 0]],
        sizegrowth         = -4,
        sizemod            = 1,
        texture            = [[burncircle]],
      },
    },
  },
  ["teleport_burst"] = {
    flash = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        airdrag            = 0,
        colormap           = [[1 1 0 .1   0 0 0 0]],
        directional        = false,
        emitrot            = 0,
        emitrotspread      = 180,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 2,
        particlelife       = 5,
        particlelifespread = 2,
        particlesize       = 60,
        particlesizespread = 30,
        particlespeed      = 0,
        particlespeedspread = 0,
        pos                = [[0, 0 r2, 0]],
        sizegrowth         = 1,
        sizemod            = 1,
        texture            = [[burncircle]],
      },
    },
    groundflash = {
      circlealpha        = 0.5,
      circlegrowth       = 10,
      flashalpha         = 1,
      flashsize          = 60,
      ttl                = 20,
      color = {
        [1]  = 1,
        [2]  = 1,
        [3]  = 1,
      },
    },
    sphere = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        alpha              = 0.3,
        alwaysvisible      = false,
        color              = [[0.8,0.8,1]],
        expansionspeed     = 10,
        ttl                = 20,
      },
    },
    fade = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
      underwater         = true,
      properties = {
        delay              = 10,
        explosiongenerator = [[custom:teleport_fade]],
        pos                = [[0 0 0]],
      },
    },
  },
  ["teleport_fade"] = {
      groundflash = {
      circlealpha        = 0,
      circlegrowth       = 0,
      flashalpha         = 0.5,
      flashsize          = 90,
      ttl                = 40,
      color = {
        [1]  = 1,
        [2]  = 0.5,
        [3]  = 0.,
      },
    },
  },
}
