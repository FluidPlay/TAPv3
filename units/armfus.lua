unitDef = {
  unitname                      = [[armfus]],
  name                          = [[Fusion Reactor]],
  description                   = [[Medium Powerplant (+35)]],
  activateWhenBuilt             = true,
  buildCostEnergy               = 1000,
  buildCostMetal                = 1000,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 6,
  BuildingGroundDecalSizeY      = 6,
  BuildingGroundDecalType       = [[arm_fusion_ground.dds]],
  buildPic                      = [[ARMFUS.png]],
  buildTime                     = 1000,
  category                      = [[SINK UNARMED]],
  corpse                        = [[DEAD]],

  customParams                  = {
    description_de = [[Produziert Energie (35)]],
    description_pl = [[Produkuje Energie (35)]],
    helptext       = [[Fusion reactors provide a good amount of steady energy output at a fair price. They are attractive targets and not very well-armored, so keep them well-protected. When killed, fusion reactors will cause heavy damage to nearby units.]],
    helptext_de    = [[Der Fusionsreaktor liefert eine gute Menge an konstanter Energie zu einem fairen Preis. Sie sind aber attraktive Ziele und schlecht gepanzert, also beschütze sie gut. Sobald ein Reaktor zerstört wird, werden Einheiten in der Nähe beschädigt.]],
    helptext_pl    = [[Reaktory fuzyjne pozwalaja osiagnac wysoka produkcje energii za niewygorowana cene. Sa jednak dobrym celem dla przeciwnikow i nie sa zbyt wytrzymale. Wybuch reaktora zadaje wysokie obrazenia okolicznym jednostkom, totez nie warto stawiac ich jeden obok drugiego.]],
    pylonrange = 150,
	removewait = 1,
  },

  energyMake                    = 35,
  energyUse                     = 0,
  explodeAs                     = [[ATOMIC_BLAST]],
  footprintX                    = 5,
  footprintZ                    = 4,
  iconType                      = [[energyfus]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  maxDamage                     = 2200,
  maxSlope                      = 18,
  minCloakDistance              = 150,
  objectName                    = [[arm_fusion.s3o]],
  script                        = "armfus.lua",
  seismicSignature              = 4,
  selfDestructAs                = [[ATOMIC_BLAST]],
  sightDistance                 = 273,
  useBuildingGroundDecal        = true,
  yardMap                       = [[ooooo ooooo ooooo ooooo]],

  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 4,
      object           = [[arm_fusion_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 5,
      footprintZ       = 4,
      object           = [[debris4x4b.s3o]],
    },

  },

}

return lowerkeys({ armfus = unitDef })
