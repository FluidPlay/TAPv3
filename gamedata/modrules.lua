-- $Id: modrules.lua 4625 2009-05-16 13:11:14Z google frog $
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    modrules.lua
--  brief:   modrules definitions
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local modrules  = {

  movement = {
	  allowUnitCollisionDamage  = false,  -- default: true if using QTPFS pathfinder.  Do unit-unit (skidding) collisions cause damage?
	  allowUnitCollisionOverlap = true,   -- lets units clump close together when moving, after which they are pushed apart. like this (video http://www.youtube.com/watch?v=mRtePUdVk2o ) at the cost of more 'clumping'.
	  allowCrushingAlliedUnits  = false,  -- default: false.  Can allied ground units crush each other during collisions? Units still have to be explicitly set as crushable using the crushable parameter of Spring.SetUnitBlocking.
	  allowGroundUnitGravity    = false,

	  allowAirPlanesToLeaveMap  = false,   -- default: true.  Are (gunship) aircraft allowed to fly outside the bounds of the map?
	  allowAircraftToHitGround  = true,   -- default: true.  Are aircraft allowed to hit the ground whilst manoeuvring?
	  allowPushingEnemyUnits    = false,  -- default: false.  Can enemy ground units push each other during collisions?
	  allowHoverUnitStrafing    = true,   -- default: true.  Allows hovercraft units to slide in turns.
  },
  
  construction = {
    constructionDecay      = true; -- defaults to true
    constructionDecayTime  = 9;  	-- defaults to 6.66
    constructionDecaySpeed = 0.03;	-- defaults to 0.03
  },

  reclaim = {
    multiReclaim  = 1;    -- defaults to 0
    reclaimMethod = 0;    -- defaults to 1
    unitMethod    = 0;    -- defaults to 1; -- 0 = gradual, 1 = all reclaimed at the end

    unitEnergyCostFactor    = 0;  -- defaults to 0
    unitEfficiency          = 1;  -- defaults to 1; 0.5
    featureEnergyCostFactor = 0;  -- defaults to 0

    allowEnemies  = true;  -- defaults to true
    allowAllies   = (Spring.GetModOptions() and (Spring.GetModOptions().allyreclaim == "1")) or false;  -- defaults to true
  },


  repair = {
    energyCostFactor = 0.5,  -- defaults to 0
  },

  resurrect = {
    energyCostFactor = 0.75,  -- defaults to 0.5
  },

  capture = {
    energyCostFactor = 0,  -- defaults to 0
  },

  paralyze = {
    paralyzeOnMaxHealth = true, -- defaults to true
	unitParalysisDeclineScale = 40, -- Time in seconds to go from 100% to 0% emp
  },

  experience = {
	  -- these are all used in the following form:
	  --   value = defValue * (1 + (scale * (exp / (exp + 1))))
	  experienceMult = 0.4,  -- (default: 1) Controls the amount of experience gained by units engaging in combat. The formulae used are: xp for damage = 0.1 * experienceMult * damage / target_HP * target_power / attacker_power.  xp for kill = 0.1 * experienceMult * target_power / attacker_power. Where power can be set by the UnitDef tag.
	  powerScale     = 1,    -- Controls how gaining experience changes the relative power of the unit. The formula used is Power multiplier = powerScale * (1 + xp / (xp + 1)).
	  healthScale    = 0.7,  -- Controls how gaining experience increases the maxDamage (total hitpoints) of the unit. The formula used is Health multiplier = healthScale * (1 + xp / (xp + 1)).
	  reloadScale    = 0.4,  -- Controls how gaining experience decreases the reloadTime of the unit's weapons. The formula used is Rate of fire multiplier = reloadScale * (1 + xp / (xp + 1)).
  },

  featureLOS = {
	  -- 0 - no default LOS for features
	  -- 1 - gaia features always visible
	  -- 2 - allyteam/gaia features always visible
	  -- 3 - all features always visible
	  -- default 3
	  featureVisibility = 1;	--3
  },

  fireAtDead = {
	  fireAtKilled   = false;  -- defaults to false
	  fireAtCrashing = false;   -- defaults to false
  },

  flankingBonus = {
	  -- defaults to 1
	  -- 0: no flanking bonus
	  -- 1: global coords, mobile
	  -- 2: unit coords, mobile
	  -- 3: unit coords, locked
	  defaultMode=0;
  },

  nanospray = {
	  allow_team_colors = true;  -- defaults to true
  },

  sensors = {
	separateJammers = true,  -- default: true
    requireSonarUnderWater = true,  -- defaults to true
    alwaysVisibleOverridesCloaked = true, -- default: false. If true then units will be visible even when cloaked (old).
    decloakRequiresLineOfSight = true, -- default false
    
    los = {
		-- Defaults: 1, 1, 2. Controls the resolution of the LOS calculations. A higher value means lower resolution but increased performance.
		-- An increase by one level means half the resolution of the LOS map in both x and y direction. Must be between 0 and 6 inclusive.
	  -- PS: Don't bother changing these values. In a test, both mip levels from 2 -> 4 changed the usage from around 1% to 0.6%.
      losMipLevel = 2,  -- defaults to 1
	  airMipLevel = 2,  -- defaults to 2
	  radarMipLevel = 3,
      losMul      = 1,  -- defaults to 1
    },
  },

  system = {
	--pathFinderSystem = (Spring.GetModOptions() and (Spring.GetModOptions().pathfinder == "qtpfs") and 1) or 0, -- QTPFS causes desync https://springrts.com/mantis/view.php?id=5936
	pathFinderSystem = 1,	--0
	pathFinderUpdateRate = 0.005,   -- default 0.007, higher means more updates -- ZK: 0.0000001,
	pathFinderRawDistMult = 1.25, -- ZK: 100000,
	allowTake = true,	-- Enables and disables the /take UI command.
	enableSmoothMesh = false,
  },

  transportability = {
    transportGround = 1;   -- defaults to 1
    transportAir    = 1;  -- defaults to 0
    transportShip   = 0;  -- defaults to 0
    transportHover  = 1;   -- defaults to 0
	targetableTransportedUnits = false; -- Can transported units be targeted by weapons? true allows both manual and automatic targeting.
  },

}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

return modrules

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

