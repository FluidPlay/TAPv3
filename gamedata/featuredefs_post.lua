-- $Id: featuredefs_post.lua 3171 2008-11-06 09:06:29Z det $
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    featuredefs_post.lua
--  brief:   featureDef post processing
--  author:  Dave Rodgers
--  author:  lurker & jK
--
--  Copyright (C) 2008,2009.
--  Licensed under the terms of the GNU GPL, v2 or later.
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

Spring.Echo("Loading FeatureDefs_posts")

local function isbool(x)   return (type(x) == 'boolean') end
local function istable(x)  return (type(x) == 'table')   end
local function isnumber(x) return (type(x) == 'number')  end
local function isstring(x) return (type(x) == 'string')  end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local mapMetalMult           = 1
local EMPTY_TABLE            = {}

local mapEnergyMult          = 0.1
local mapEnergyMultThreshold = 60
local energyDefaultBound     = 5
local energyDefault          = 25

-- scale energy/reclaimtime of map's features
for name, fd in pairs(FeatureDefs) do
	if not (fd.customparams or EMPTY_TABLE).mod then
		local metal = (tonumber(fd.metal) or 0)*mapMetalMult
		
		local energy = tonumber(fd.energy) or 0
		if energy > mapEnergyMultThreshold then
			energy = energy * mapEnergyMult
		elseif energy > 0 and energy < energyDefaultBound then
			energy = energyDefault
		end
		
		if metal > 0 or energy > 0 then
			if fd.reclaimable == false then
				-- Geocrack
				energy = 0
				metal = 0
			end
			
			fd.metal = metal
			fd.energy = energy
			
			fd.reclaimtime = math.max(1, energy + metal) -- Income equal to BP split between metal and energy.
		end
		
		fd.customparams = fd.customparams or {}
		fd.customparams.is_tracked_map_feature = 1
	end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local baseModuleWreck = {
	description		= [[Module Wreck]],
	blocking		= false,
	damage			= 100,
	energy			= 0,
	footprintX		= 2,
	footprintZ		= 2,
	metal			= 40,
	object			= [[wreck1x1.s3o]],
	reclaimable		= true,
	reclaimTime		= 40,
	customparams    = {
		fromunit = 1,
	},
}

local baseModuleHeap = {
	description		= [[Module Debris]],
	blocking		= false,
	damage			= 50,
	energy			= 0,
	footprintX		= 1,
	footprintZ		= 1,
	metal			= 20,
	object			= [[debris1x1b.s3o]],
	reclaimable		= true,
	reclaimTime		= 20,
	customparams    = {
		fromunit = 1,
	},
}

local function GenerateModuleWrecks()
	local moduleDefs = VFS.Include("LuaRules/Configs/dynamic_comm_defs.lua")
	for i = 1, #moduleDefs do
		local moduleDef = moduleDefs[i]
		local wreck = CopyTable(baseModuleWreck, true)
		local heap = CopyTable(baseModuleHeap, true)
		wreck.description = moduleDef.humanName .. " Shards"
		wreck.metal = moduleDef.cost * 0.4
		wreck.reclaimtime = moduleDef.cost * 0.4
		wreck.damage = moduleDef.cost * 2
		wreck.name = "module_wreck_" .. i
		wreck.featuredead = "module_heap_" .. i
		
		FeatureDefs["module_wreck_" .. i] = wreck
		
		heap.description = moduleDef.humanName .. " Fragments"
		heap.metal = moduleDef.cost * 0.2
		heap.reclaimtime = moduleDef.cost * 0.2
		heap.damage = moduleDef.cost * 2
		heap.name = "module_heap_" .. i
		
		FeatureDefs["module_heap_" .. i] = heap
	end
end

GenerateModuleWrecks()

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  Per-unitDef featureDefs
--

local DEAD_METAL_MULT = 0.6
local DEAD_DMG_MULT = 0.5
local DEAD_CRUSHRES_MULT = 1
--
local HEAP_METAL_MULT = 0.25
local HEAP_DMG_MULT = 0.25
local HEAP_CRUSHRES_MULT = 0.5

-- Process the unitDefs
local UnitDefs = DEFS.unitDefs

local function ProcessUnitDef(udName, uDef)

	local unitFeatureDefs = uDef.featuredefs
	if (not istable(unitFeatureDefs)) then
		return end

	-- Automatically set metal and resistance of this featureDef, according to its unitdef info
	local function calculateMetalAndDamage(id, featuredef, uDef)
		local metalFactor, damageFactor, crushresistFactor, groupMult = 1, 1, 1, 1
		if id:find("dead") then
			metalFactor, damageFactor, crushresistFactor = DEAD_METAL_MULT, DEAD_DMG_MULT, DEAD_CRUSHRES_MULT
		elseif id:find("heap") then
			metalFactor, damageFactor, crushresistFactor = HEAP_METAL_MULT, HEAP_DMG_MULT, HEAP_CRUSHRES_MULT
		end
		if uDef.customparams and uDef.customparams.groupsize then
			groupMult = 1/uDef.customparams.groupsize
		end
		featuredef.metal = uDef.buildcostmetal * metalFactor * groupMult --true buildcostmetal
		featuredef.damage = uDef.maxdamage * damageFactor    --health
		local crushResist = uDef.crushresistance or uDef.mass
		if crushResist then
			featuredef.crushresistance = crushResist * crushresistFactor
		end
		--Spring.Echo("name, id, metal, damage: "..uDef.name..", "..id..", "..featuredef.metal..", "..featuredef.damage)
		return featuredef
	end

	-- add this unitDef's featureDefs
	for featID, featureData in pairs(unitFeatureDefs) do
		if (isstring(featID) and istable(featureData)) then

			if uDef.buildcostmetal and uDef.maxdamage then
				featureData = calculateMetalAndDamage(featID, featureData, uDef) end
			-- Make all unit's featureDefs 'unpushable'
			featureData.mass = 99999
			--Spring.Echo("Fullname: uDefID - ".. uDefID .." id - ".. featID)

			--if featureData.featuredead then -- it's a DEAD feature
			--	if not featureData.metal then
			--		featureData.metal = ud.buildcostmetal * DEAD_MULT end
			--	if not featureData.description then
			--		featureData.description = "Wreckage - "..ud.name end
			--	else --it's a HEAP feature
			--		if not featureData.metal then featureData.metal = ud.buildcostmetal * HEAP_MULT end
			--		if not featureData.description then featureData.description = "Debris - "..ud.name
			--	end
			--end

			featureData.footprintx = featureData.footprintx or uDef.footprintx
			featureData.footprintz = featureData.footprintz or uDef.footprintz

			featureData.customparams = featureData.customparams or {}
			featureData.customparams.fromunit = "1"
			featureData.damage = featureData.customparams.health_override or uDef.maxdamage
			featureData.energy = 0
			featureData.reclaimable = true
			featureData.reclaimtime = featureData.metal
			featureData.filename = uDef.filename

			local fullName = udName .. '_' .. featID
			FeatureDefs[fullName] = featureData
			UnitDefs[udName].featuredefs[featID] = featureData
		end
	end

	-- FeatureDead name changes
	--(featureName of the feature to spawn when this feature is destroyed)
	for fdName, fd in pairs(unitFeatureDefs) do
		if (isstring(fdName) and istable(fd)) then
			if (isstring(fd.featuredead)) then
				local fullName = udName .. '_' .. fd.featuredead:lower()
				if (FeatureDefs[fullName]) then
					fd.featuredead = fullName	end
			end
		end
	end

	-- convert the unit corpse name
	if (isstring(uDef.corpse)) then
		local fullName = udName .. '_' .. uDef.corpse:lower()
		local fd = FeatureDefs[fullName]
		if (fd) then
			if fd.resurrectable ~= 0 then
				fd.resurrectable = 1
			end
			uDef.corpse = fullName
		end
	end

	--TAP-TODO: add smallfeaturenoblock to modoptions
	if Spring.GetModOptions().smallfeaturenoblock == "enabled" then
		for id,featureDef in pairs(FeatureDefs) do
			if featureDef.name ~= "rockteeth" and
					featureDef.name ~= "rockteethx" then
				if featureDef.footprintx ~= nil and featureDef.footprintz ~= nil then
					if tonumber(featureDef.footprintx) <= 2 and tonumber(featureDef.footprintz) <= 2 then
						--Spring.Echo(featureDef.name)
						--Spring.Echo(featureDef.footprintx .. "x" .. featureDef.footprintz)
						featureDef.blocking = false
						--Spring.Echo(featureDef.blocking)
					end
				end
			end
		end
	end

end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

-- Process the unitDefs

local UnitDefs = DEFS.unitDefs

for udName, ud in pairs(UnitDefs) do
  if (isstring(udName) and istable(ud)) then
    ProcessUnitDef(udName, ud)
  end
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

for name, def in pairs(FeatureDefs) do
	-- resurrectable = -1 seems to be broken, set it to 0 for all values which are not 1
	if def.resurrectable ~= 1 then
		def.resurrectable = 0
	end
	-- Fix for engine de-prioritising features with 0 metal in force-reclaim mode
	if not def.metal or def.metal == 0 then
		def.metal = 0.001
		def.autoreclaimable = false
	end
end
 
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
