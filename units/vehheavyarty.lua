unitDef = {
  unitname            = [[vehheavyarty]],
  name                = [[Impaler]],
  description         = [[Precision Artillery Vehicle]],
  acceleration        = 0.042,
  brakeRate           = 0.08,
  buildCostMetal      = 700,
  builder             = false,
  buildPic            = [[vehheavyarty.png]],
  canMove             = true,
  category            = [[LAND]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[40 20 40]],
  collisionVolumeType    = [[box]],
  corpse              = [[DEAD]],

  customParams        = {
    description_fr = [[Lanceur de Missile de Croisi?re Mobile]],
    description_de = [[Mobile Marschflugkörperabschussrampe]],
    helptext       = [[The Impaler fires vertically a high damage, high accuracy kinetic missile at long range. Its high arc makes it able to fire over any obstacle, however that makes the flight time so high that it's useless against moving targets. Use the Impaler to kill specific buildings.]],
    helptext_de    = [[Der Impaler feuert seine Ballistgeschoss senkrecht ab. Ihn zeichnen seine hohe Präzision und die lange Reichweite seiner Flugkörper, sowie die Möglichkeit über Hindernisse zu schießen, aus. Die große Flugzeit macht ihn aber nutzlos gegenüber sich bewegenden Einheiten. Nutze den Impaler, um spezielle Einheiten/Gebäude zu zerstören.]],
    helptext_fr    = [[Le Impaler tire verticallement des missiles de croisi?res qui retombent exactement sur leur cible, causant de puissant dommages sur une tr?s petite zone. Cependant le temps de voyage des missiles le rends inefficace contre les unit?s mobiles. ]],

    dontfireatradarcommand = '1',
  },

  explodeAs           = [[BIG_UNITEX_MERL]],
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[vehiclelrarty]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  leaveTracks         = true,
  maxDamage           = 1100,
  maxSlope            = 18,
  maxVelocity         = 2.25,
  minCloakDistance    = 75,
  movementClass       = [[TANK3]],
  noChaseCategory     = [[TERRAFORM FIXEDWING GUNSHIP]],
  objectName          = [[core_diplomat.s3o]],
  script              = [[vehheavyarty.lua]],
  selfDestructAs      = [[BIG_UNITEX_MERL]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:NONE]],
    },

  },

  sightDistance       = 660,
  trackOffset         = 15,
  trackStrength       = 8,
  trackStretch        = 1,
  trackType           = [[StdTank]],
  trackWidth          = 40,
  turninplace         = 0,
  turnRate            = 460,

  weapons             = {

    {
      def                = [[CORTRUCK_ROCKET]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

  },

  weaponDefs          = {

    CORTRUCK_ROCKET = {
      name                    = [[Kinetic Missile]],
      areaOfEffect            = 24,
      cegTag                  = [[raventrail]],
      collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,

	  customParams        = {
		light_camera_height = 2500,
		light_color = [[1 0.8 0.2]],
	  },

      damage         = {
        default = 800.1,
        subs    = 4,
      },

      --Want to remove engine's FX and rely on CEG??? NOTE: issues with CEG: http://springrts.com/mantis/view.php?id=3401 (invisible CEGs can block all visible CEGs if MaxParticles is low. Not cool...)
      customParams = {
		--trail_burnout = 64, -- two seconds of vertical ascension
		--trail_burnout_ceg = [[missiletrailredsmall]],
      },
      texture1=[[null]], --flare, reference: http://springrts.com/wiki/Weapon_Variables#Texture_Tags
      --texture2=[[null]], --smoketrail
      --texture3=[[null]], --flame

      edgeEffectiveness       = 0.5,
      explosionGenerator      = [[custom:DOT_Merl_Explo]],
      fireStarter             = 100,
      flightTime              = 10,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      metalpershot            = 0,
      model                   = [[wep_merl.s3o]],
      noSelfDamage            = true,
      range                   = 1500,
      reloadtime              = 10,
      smokeTrail              = false,
      soundHit                = [[weapon/missile/vlaunch_hit]],
      soundStart              = [[weapon/missile/missile_launch]],
      tolerance               = 4000,
      turnrate                = 18000,
      weaponAcceleration      = 315,
      weaponTimer             = 2,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 8000,
    },

  },

  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[core_diplomat_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3c.s3o]],
    },

  },

}

return lowerkeys({ vehheavyarty = unitDef })
