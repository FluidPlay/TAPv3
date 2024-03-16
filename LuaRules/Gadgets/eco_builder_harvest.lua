---
--- Created by Breno "MaDDoX" Azevedo.
--- DateTime: 14-Nov-18 9:19 AM
---
function gadget:GetInfo()
	return {
		name      = "Eco - Builder Harvest",
		desc      = "Damaged (Harvested) Pandore Chunks are converted (or stored) into ore resources",
		author    = "MaDDoX",
		date      = "Sep 2021",
		license   = "GNU GPL, v2 or later",
		layer     = 1,
		enabled   = true,
	}
end

--New version TODO: Spring.SetUnitResourcing ( number unitID, string res, number amount )
--return: nil
--
--or
--
--Spring.SetUnitResourcing ( number unitID, { res = number amount, ... } )
--return: nil
--
--Possible values for res are: "[u|c][u|m][m|e]"
--unconditional | conditional
--use | make
--metal | energy

VFS.Include("gamedata/tapevents.lua") --"LoadedHarvesterEvent"

if gadgetHandler:IsSyncedCode() then
	-----------------
	---- SYNCED
	-----------------

	VFS.Include("gamedata/taptools.lua")
	local isOreTower, isHarvester = VFS.Include("common/include/harvestsystemtypes.lua")
	--local isOreTower = {
	--	armmstor = true, cormstor = true, armuwadvms = true, coruwadvms = true,
	--	bowhq = true, bowhq2 = true, bowhq3 = true, bowhq4 = true, bowhq5 = true, bowhq6 = true,
	--	kernhq = true, kernhq2 = true, kernhq3 = true, kernhq4 = true, kernhq5 = true, kernhq6 = true,
	--}
	--local isHarvester = {
	--	armck = true, corck = true, armck2 = true, corck2 = true, armcv = true, corcv = true, armca = true, corca = true, armcs = true, corcs = true,
	--	armack = true, corack = true, armacv = true, coracv = true, armaca = true, coraca = true, armacsub = true, coracsub = true,
	--}

	local localDebug = false --|| Enables text state debug messages

	local CHECK_FREQ = 30 --4

	--local function clamp(low, n, high) return math.min(math.max(n, low), high) end
	local clamp = math.clamp
	local spGetGameFrame = Spring.GetGameFrame
	local spCreateUnit = Spring.CreateUnit
	local spSetUnitNeutral = Spring.SetUnitNeutral
	local spSetUnitHarvestStorage = Spring.SetUnitHarvestStorage
	local spGetUnitDefID = Spring.GetUnitDefID
	--local spGetUnitHarvestStorage = Spring.GetUnitHarvestStorage
	local spGetUnitTeam = Spring.GetUnitTeam
	local spAddTeamResource = Spring.AddTeamResource
	local spCallCOBScript = Spring.CallCOBScript
	local spSetUnitWeaponState = Spring.SetUnitWeaponState
	local spGiveOrderToUnit = Spring.GiveOrderToUnit
	local spSetUnitRulesParam = Spring.SetUnitRulesParam
	local spGetUnitPosition = Spring.GetUnitPosition
	local spGetUnitSeparation = Spring.GetUnitSeparation
	local spGetUnitAllyTeam = Spring.GetUnitAllyTeam

	local defaultMaxStorage = 400 --620
	local defaultOreTowerRange = 330

	local harvesters = {} -- { unitID = { cur = 9999, max = unitDef.customparams.maxorestorage}, delivery = 0.999 }. ... }
	--local partialLoadHarvesters = {} --{ unitID = true, ... }    -- Harvesters with ore load > 0% and < 100%
	local loadedHarvesters = {}
	local featureRemainingMetal = {}
	local previousHarvestStorage = {}
	local oreTowers = {}
	local harvestersInAction = {} -- Harvesters "in action"

	local distBuffer = 40 -- distance buffer, units get further into the ore tower 'umbrella range' before dropping the load
	local defaultDeliveryAmount = 20


	local CMD_STOP = CMD.STOP

	local ore = { sml = UnitDefNames["oresml"].id, lrg = UnitDefNames["orelrg"].id, moho = UnitDefNames["oremoho"].id, uber = UnitDefNames["oreuber"].id }

	local function spEcho(string)
		if localDebug then --and isCom(unitID) and state ~= "deautomated"
			Spring.Echo("gadget|eco_builder:: "..string) end
	end

	--- returns nil (not a harvester or current amount not initialized) or a given amount from 0 to max
	local function getUnitHarvestStorage(unitID)
		local harvestStorageEntry = harvesters[unitID]
		--Spring.Echo("Harvester storage for "..unitID..": "..(harvestStorageEntry and (harvestStorageEntry.cur.." | "..harvestStorageEntry.max) or "N/A"))
		if not harvestStorageEntry then
			return 0
		end
		local cur = harvestStorageEntry.cur
		return cur
	end

	local function setUnitHarvestStorage(unitID, cur, max)
		local harvestStorageEntry = harvesters[unitID]
		if not harvestStorageEntry then
			return end
		if max then
			harvestStorageEntry.max = max
			--TODO: Currently that's not set/read by healthBars. Might not ever be needed.
		end
		if isnumber(cur) then
			local newStorage = math_clamp(0, harvestStorageEntry.max, cur)
			harvestStorageEntry.cur = newStorage
			spSetUnitRulesParam(unitID, "oreLoad", newStorage)
			--Spring.Echo("eco_builder_harvest:: setting unitRuleParam oreLoad to "..(newStorage or "nil"))
		end
	end

	function gadget:Initialize()
		_G.OreTowers = oreTowers    -- making it available for unsynced access via SYNCED table
		--_G.HarvesterStorage = harvesterStorage

		--startFrame = Spring.GetGameFrame()
		--gaiaTeamID = Spring.GetGaiaTeamID()
		--TODO: Temp removal
		--if Spring.GetModOptions().harvest_eco == 0 then
		--	gadgetHandler:RemoveGadget(self)
		--end
		local units = Spring.GetAllUnits()
		for i = 1, #units do
			gadget:UnitFinished(units[i], spGetUnitDefID(units[i]))
		end
	end

	function gadget:UnitFinished(unitID, unitDefID, unitTeam)
		local unitDef = UnitDefs[unitDefID]
		if unitDef == nil then
			return end
		if isOreTower[unitDef.name] then
			spEcho("Ore Tower added: "..unitID)
			oreTowers[unitID] = { range = (unitDef.buildDistance or 330), ally = spGetUnitAllyTeam(unitID) } -- 330 is lvl1 outpost build range
			spSetUnitRulesParam(unitID, "oretowerrange", (unitDef.buildDistance or defaultOreTowerRange)) --330
		end

		local maxorestorage = tonumber(unitDef.customParams.maxorestorage)
		spEcho("finished unit harvestStorage: "..(maxorestorage or "nil")) --maxorestorage
		if maxorestorage and maxorestorage > 0 then
			local harvesterDef = UnitDefs[spGetUnitDefID(unitID)]
			local harvestWeaponDef = WeaponDefNames[harvesterDef.name.."_harvest_weapon"]
			local deliveryAmount = harvestWeaponDef and harvestWeaponDef.damages[0] or defaultDeliveryAmount
			harvesters[unitID] = { max=maxorestorage, cur=0, delivery = deliveryAmount }
			spEcho("Harvester added: "..unitID.." storage: "..maxorestorage)
		else
			spEcho("Harvester not detected")
		end
	end

	function gadget:UnitDestroyed(unitID, unitDefID, teamID, attackerID, attackerDefID, attackerTeam)
		harvesters[unitID] = nil
		oreTowers[unitID] = nil
		loadedHarvesters[unitID] = nil
		previousHarvestStorage[unitID] = nil

		--chunksToSprawl[unitID] = nil
		--local chunk = spawnedChunks[unitID]
		--if not spawnedChunks[unitID] then
		--    return end
		--local attackerDef = UnitDefs[attackerDefID]
		--if attackerDef and attackerDef.canCapture then
		--    spSetUnitHarvestStorage ( attackerID, oreValue[chunk.type])
		--end
		--spawnedChunks[unitID] = nil
	end

	function gadget:FeatureDestroyed(featureID)
		featureRemainingMetal[featureID] = nil
	end

	-----Returns nearestTowerID (or nil if none found within 999 range) & nearestDeployPos
	--local function getNearestTowerID(harvesterID)
	--    local nearestDist = 999
	--    local nearestTowerID = nil
	--    local nearestTowerRange = 999
	--    for oreTowerID, data in pairs(oreTowers) do
	--        local range = data.range
	--        local thisTowerDist = spGetUnitSeparation ( harvesterID, oreTowerID, true) -- [, bool surfaceDist ]] )
	--        if (thisTowerDist - range + distBuffer) <= nearestDist then  -- Eg: ttD = 600 - range = 200 => 600-200+40) => 440
	--            nearestTowerRange = range
	--            nearestTowerID = oreTowerID
	--        end
	--    end
	--    if nearestTowerRange == 999 then
	--        return nil
	--    end
	--    -- Get nearest point in deliver range of the Ore Tower
	--    --L = sqrt ((x2-x1)^2 + (y2-y1)^2) --that's already nearestDist
	--    local p = (nearestTowerRange - distBuffer) / nearestDist	--percentage (radius to discount / length of p1~p2)
	--    local x1, y1 = spGetUnitPosition(harvesterID)
	--    local x2, y2 = spGetUnitPosition(nearestTowerID)
	--    if x1==x2 and y1==y2 then
	--        return nil
	--    end
	--    local nearestDeployPos = { x = x2+p*(x1-x2), y = y2+p*(y1-y2) }
	--    return nearestTowerID, nearestDeployPos
	--end

	--local function isHarvesting(unitID)
	--	return harvestersInAction[unitID]
	--end

	local function inTowerRange(harvesterID)
		local harvesterAlly = spGetUnitAllyTeam(harvesterID)
		for oreTowerID, data in pairs(oreTowers) do
			local oreTowerAlly = data.ally --spGetUnitAllyTeam(oreTowerID)
			if (oreTowerAlly == harvesterAlly) then
				local range = data.range
				local thisTowerDist = spGetUnitSeparation ( harvesterID, oreTowerID, true) -- [, bool surfaceDist ]] )
				if thisTowerDist <= range then
					return true
				end
			end
		end
		return false
	end

	--- Returns: deliveryAmount, maxStorage
	local function getHarvesterInfo(harvesterID)
		if not IsValidUnit(harvesterID) then
			return end
		if not harvesters[harvesterID] then
			return end
		local harvesterInfo = harvesters[harvesterID]
		--local deliveryAmount = harvestWeaponDef and harvestWeaponDef.damages[0] or defaultDeliveryAmount
		--local maxStorage = harvesterDef and tonumber(harvesterDef.customParams.maxorestorage) or defaultMaxStorage
		return harvesterInfo.delivery, harvesterInfo.max
	end

	local function DeliverResources(harvesterID)
		if not IsValidUnit(harvesterID) then
			return end
		--Spring.Echo("Harvest weapon: "..(harvestWeaponDef.name or "nil"))

		--Spring.Echo("Amount: "..(harvestWeaponDef.damages[0] or "nil"))
		local curStorage = getUnitHarvestStorage(harvesterID)
		local deliveryAmount, maxStorage = getHarvesterInfo(harvesterID)
		--local deliveryAmount = harvestWeaponDef and harvestWeaponDef.damages[0] or defaultDeliveryAmount
		--local maxStorage = harvesterDef and tonumber(harvesterDef.customParams.maxorestorage) or defaultMaxStorage

		spAddTeamResource (spGetUnitTeam(harvesterID), "metal", math_clamp(0, curStorage, deliveryAmount) ) --eg: curStorage = 3, amount/dmg = 5, add 3.
		setUnitHarvestStorage (harvesterID, math_clamp(0, maxStorage, curStorage - deliveryAmount))
	end

	--- Delivers resource straight to the pool (it's in range of a tower)
	local function DeliverResourcesRaw(harvesterID, amount, maxStorage)
		--local harvesterDef = UnitDefs[spGetUnitDefID(harvesterID)]
		--local maxStorage = harvesterDef and tonumber(harvesterDef.customParams.maxorestorage) or defaultMaxStorage
		local metalToAdd = math_clamp(0, maxStorage, amount)
		spAddTeamResource (spGetUnitTeam(harvesterID), "metal", metalToAdd ) --(min, max, n)
	end

	function gadget:UnitIdle(unitID, unitDefID, unitTeam)
		harvestersInAction[unitID] = nil
	end

	---can't issue attack if the builder is loaded
	---must set states on the builder_brain (use spSetUnitRuleParams)
	---must continuously check if an oretower is available, if is loaded

	-- attackerID => harvesterID, for legibility purposes
	function gadget:UnitDamaged(unitID, unitDefID, unitTeam, damage, paralyzer, weaponID, projectileID, harvesterID, harvesterDefID, attackerTeam)
		--Spring.Echo("Damage: "..(damage or "nil").." from: "..(harvesterID or "nil"))
		if not IsValidUnit(harvesterID) or loadedHarvesters[harvesterID] then
			return end
		local harvesterDef = UnitDefs[harvesterDefID]
		if not harvesterDef or not isHarvester[harvesterDef.name] then
			return end
		local curStorage = getUnitHarvestStorage(harvesterID)

		-- Block further usage of the unit's harvest weapon while storage is full
		local maxStorage = harvesterDef and tonumber(harvesterDef.customParams.maxorestorage) or defaultMaxStorage

		harvestersInAction[unitID] = true

		--Spring.Echo("unitDamaged: storage cur/max="..(curStorage or "nil").."/"..maxStorage..", damage="..damage)
		if not isnumber(curStorage) then
			return end
		if curStorage < maxStorage then
			if inTowerRange(harvesterID) then
				DeliverResourcesRaw(harvesterID, damage, maxStorage)
			else
				setUnitHarvestStorage (harvesterID, curStorage + damage)
			end
		else
			-- Block weapon so it can no longer harvest
			spCallCOBScript(harvesterID, "BlockWeapon", 0)
			--Spring.Echo("unit ".. harvesterID .." is loaded!!")
			loadedHarvesters[harvesterID] = true
			spSetUnitRulesParam(unitID, "loadedHarvester", 1)
			--@ unitai_auto_assist: move it to be in range of closest ore tower
			SendToUnsynced(LoadedHarvesterEvent, attackerTeam, harvesterID)
		end
	end

	--function gadget:AllowWeaponTarget(unitID, targetID, attackerWeaponNum, attackerWeaponDefID, defPriority)
	--	if not loadedHarvesters[unitID] then
	--		return true, defPriority
	--	end
	--	return false, (defPriority or 1.0)
	--end

	function gadget:GameFrame(gf)
		--- Since by default harvesters don't deliver reclaimed resources directly, we do it manually
		---TODO: Remove, obsolete without the usage of the (broken, bonkers) engine harvestStorage.
		--for harvesterID, previousStorage in pairs(previousHarvestStorage) do
		--    local curStorage = spGetUnitHarvestStorage(harvesterID) or 0
		--    spEcho("This harvestStorage: "..(spGetUnitHarvestStorage(harvesterID) or 0))
		--    spAddTeamResource (spGetUnitTeam(harvesterID), "metal", curStorage)
		--    spSetUnitHarvestStorage (harvesterID, previousStorage)
		--    previousHarvestStorage[harvesterID] = nil
		--end

		if gf % CHECK_FREQ > 0.001 then
			return
		end

		--- If in tower range, deliver resources
		for harvesterID in pairs(harvesters) do
			local curStorage = getUnitHarvestStorage(harvesterID) or 0
			if curStorage > 0 and inTowerRange(harvesterID) then
				DeliverResources(harvesterID)
			end
		end

		for unitID, _ in pairs(loadedHarvesters) do
			--spEcho("load harv id "..(unitID or "nil"))
			if IsValidUnit(unitID) then
				local unitDefID = spGetUnitDefID(unitID)
				local uDef = UnitDefs[unitDefID]
				local maxStorage = uDef and (tonumber(uDef.customParams.maxorestorage) or defaultMaxStorage)
				local curStorage = getUnitHarvestStorage(unitID)
				spEcho("harv id "..(unitID or "nil").." curStorage: "..curStorage.." maxStorage: "..maxStorage)
				if (curStorage < maxStorage) then --< maxStorage
					loadedHarvesters[unitID] = nil
					spSetUnitRulesParam(unitID, "loadedHarvester", 0)
					spCallCOBScript(unitID, "UnblockWeapon", 0)
					spEcho("unit ".. unitID .." is no longer loaded")
					---TODO: Cache original weapon ranges by unitDefID
					--local weaponDefID = UnitDefs[Spring.GetUnitDefID(unitID)].weapons[1].weaponDef
					--local origRange = WeaponDefs[weaponDefID].range
					--spSetUnitWeaponState(unitID, 1, "range", origRange) --300) -- TODO: Remove temp fix --
					----Spring.Echo("Restored range to: "..origRange)
				end
			end
		end
	end
else
	----- UNSYNCED
	---

	-- Currently unused, we handle this in unitai_auto_harvest through GetUnitRulesParam(unitID, "oreLoad")
	local function handleLoadedHarvesterEvent(cmd, harvesterTeam, unitID, value)
		if not Script.LuaUI(LoadedHarvesterEvent) then
			return end
		--- LuaUI event consumed by unitai_autoassist (to set loadedHarvesters[unitID])
		Script.LuaUI.LoadedHarvesterEvent(harvesterTeam, unitID, value)
	end

	function gadget:Initialize()
		gadgetHandler:AddSyncAction(LoadedHarvesterEvent, handleLoadedHarvesterEvent)
	end

	function gadget:Shutdown()
		gadgetHandler:RemoveSyncAction(LoadedHarvesterEvent)
	end
end
