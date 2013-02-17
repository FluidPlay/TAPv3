unitDef = {
  unitname                      = [[mahlazer]],
  name                          = [[Starlight]],
  description                   = [[Planetary Energy Chisel]],
  acceleration                  = 0,
  activateWhenBuilt             = true,
  brakeRate                     = 0,
  buildAngle                    = 32700,
  buildCostEnergy               = 35000,
  buildCostMetal                = 35000,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 11,
  buildingGroundDecalSizeY      = 11,
  buildingGroundDecalType       = [[mahlazer_aoplane.dds]],
  buildPic                      = [[mahlazer.png]],
  buildTime                     = 35000,
  canAttack                     = true,
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[120 120 120]],
  collisionVolumeTest           = 1,
  collisionVolumeType           = [[ellipsoid]],
  corpse                        = [[DEAD]],

  customParams                  = {
    description_fr = [[Lazer ? Charge ?liptique]],
	description_de = [[Planetarischer Energiemei�el]],
    helptext       = [[This large scale tool is used to shape terrain for terraforming projects. Also useful as a cleanser of obstacles such as pesky enemy units and bases.]],
    helptext_fr    = [[Le MAH Lazer est un b?timent abritant un puissant g?n?rateur de faisceau laser ?liptique, dont l'impact est param?trable. Sa puissance est telle qu'il coupe tout sur son passage, y compris les alli?s. Pensez ? pr?voir un espace d?gag? autour de lui pour ?viter que le laser ne coupe votre base en deux en d?marrant.]],
	helptext_de    = [[Diese gigantische Waffe nutzt ihren energetischen Strahl, um gro�e Gr�ben im Terrain zu hinterlassen und dabei alles, was sich ihr in den Weg stellt, auszul�schen. Ebenfalls als Ausl�scher von st�renden Hindernissen, wie zum Beispiel nervt�tende feindliche Enheiten und Basen, sehr n�tzlich.]],
	modelradius    = [[60]],
  },

  explodeAs                     = [[ATOMIC_BLAST]],
  footprintX                    = 8,
  footprintZ                    = 8,
  iconType                      = [[mahlazer]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  mass                          = 2013,
  maxDamage                     = 12000,
  maxSlope                      = 18,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noChaseCategory               = [[FIXEDWING LAND SHIP SATELLITE SWIM GUNSHIP SUB HOVER]],
  objectName                    = [[lazer.3do]],
  script                        = [[mahlazor.lua]],
  onoffable                     = true,
  seismicSignature              = 4,
  selfDestructAs                = [[ATOMIC_BLAST]],

  sfxtypes                      = {

    explosiongenerators = {
      [[custom:IMMA_LAUNCHIN_MAH_LAZER]],
    },

  },

  side                          = [[ARM]],
  sightDistance                 = 660,
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[oooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo]],

  weapons                       = {

    {
      def                = [[TARGETER]],
      badTargetCategory  = [[FIXEDWING GUNSHIP SATELLITE]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER FIXEDWING GUNSHIP SATELLITE]],
    },  
  
    {
      def                = [[LAZER]],
      onlyTargetCategory = [[NONE]],
    },

    {
      def                = [[CUTTER]],
      onlyTargetCategory = [[NONE]],
    },    
    
    {
      def                = [[RELAY]],
      onlyTargetCategory = [[NONE]],
    },   
    
  },


  weaponDefs                    = {

    LAZER    = {
      name                    = [[Craterpuncher]],
      accuracy                = 0,
      alwaysVisible           = 0,
      areaOfEffect            = 140,
      avoidFeature            = false,
      avoidNeutral            = false,
      beamTime                = 1,
      coreThickness           = 0.5,
      craterBoost             = 4,
      craterMult              = 8,
      cylinderTargeting      = 1,

      damage                  = {
        default = 3000,
      },

      explosionGenerator      = [[custom:megapartgun]],
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 10,
      minIntensity            = 1,
      noSelfDamage            = true,
      range                   = 10000,	-- extra 1000 to prevent cutoff at max range
      reloadtime              = 20,
      rgbColor                = [[0.25 0 1]],
      soundStart              = [[weapon/laser/heavy_laser4]],
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 48,
      tolerance               = 1000,
      turret                  = true,
      waterWeapon             = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 1400,
    },

    CUTTER    = {
      name                    = [[Groovecutter]],
      alwaysVisible           = 18,
      areaOfEffect            = 56,
      avoidFeature            = false,
      avoidNeutral            = false,
      beamTime                = 0.001,
      canattackground         = false,
      coreThickness           = 0.5,
      craterBoost             = 2,
      craterMult              = 4,
      cylinderTargeting      = 8192,

      damage                  = {
        default = 100,
      },

      explosionGenerator      = [[custom:FLASHLAZER]],
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 12,
      minIntensity            = 1,
      range                   = 9000,	-- extra 1000 to prevent cutoff at max range
      reloadtime              = 0.03,
      rgbColor                = [[0.25 0 1]],
      soundStart              = [[weapon/laser/laser_burn6]],
      soundStartVolume        = 1,
      soundTrigger            = true,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 16,
      tolerance               = 10000,
      turret                  = true,
      waterWeapon             = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 1400,
    },    

    RELAY    = {
      name                    = [[Mah Relay Lazor (fake)]],
      alwaysVisible           = 18,
      areaOfEffect            = 56,
      avoidFeature            = false,
      avoidNeutral            = false,
      beamTime                = 0.001,
      canattackground         = false,
      coreThickness           = 0.5,
      --craterBoost             = 2,
      --craterMult              = 4,
      cylinderTargeting      = 8192,

      damage                  = {
        default = 100,
      },

      explosionGenerator      = [[custom:FLASHLAZER]],
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 12,
      minIntensity            = 1,
      range                   = 100,
      reloadtime              = 0.03,
      rgbColor                = [[0.25 0 1]],
      soundStart              = [[weapon/laser/laser_burn6]],
      soundStartVolume        = 1,
      soundTrigger            = true,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 16,
      tolerance               = 10000,
      turret                  = true,
      waterWeapon             = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 1400,
    },


    TARGETER = {
      name                    = [[Aimer (fake)]],
      alwaysVisible           = 18,
      areaOfEffect            = 56,
      avoidFeature            = false,
      avoidNeutral            = false,
      beamTime                = 0.001,
      burst                   = 600,	-- to fool context menu
      burstRate               = 0.03,
      canattackground         = false,
      coreThickness           = 0.5,
      cylinderTargeting      = 8192,

      damage                  = {
        default = -0.00001,
      },

      explosionGenerator      = [[custom:NONE]],
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 12,
      minIntensity            = 1,
      range                   = 9000,
      reloadtime              = 20,
      rgbColor                = [[0.25 0 1]],
      soundVolume             = 0,
      soundStartVolume        = 0,
      soundTrigger            = true,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 0,
      tolerance               = 10000,
      turret                  = true,
      waterWeapon             = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 1400,
    },

  },


  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage - Starlight]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 12000,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[40]],
      hitdensity       = [[100]],
      metal            = 14000,
      object           = [[wreck7x7a.s3o]],
      reclaimable      = true,
      reclaimTime      = 14000,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP  = {
      description      = [[Debris - Starlight]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 12000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 7000,
      object           = [[debris3x3c.s3o]],
      reclaimable      = true,
      reclaimTime      = 7000,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ mahlazer = unitDef })
