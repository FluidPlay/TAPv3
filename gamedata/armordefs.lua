
Spring.Echo("Loading ArmorDefs_posts")

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local armorDefs = {
	robot = { "armack","armch","armck","armfark","armpw","armrectr","armsubk","armconsul","coraca","corack","corak",
			  "coramph","corch","corck","cornecro","corspy","corsub","corvoyr","armfast", "corsktl", "corpyro",
			  "armaak","armaser","armah","armjeth","armsptk","armmh","armrock","coraak","corah","corcrash",
			  "corstorm","cortermite", "cordefiler","armsnipe", },
	armorbot={"armmark", "armzeus", "corsumo","armfboy","armham","armvader","armwar","corcan","corroach","corthud",
			  "cormando","armmav","armspid","cormort","corhrk",},
	--lightbot={"armack","armch","armck","armfark","armpw","armrectr","armsubk","armconsul","coraca","corack","corak",
	--          "coramph","corch","corck","cornecro","corspy","corsub","corvoyr","armfast", "corsktl", "corpyro",},
	--supportbot={"armaak","armaser","armah","armjeth","armsptk","armmh","armrock","coraak","corhrk","corah","corcrash",
	--		"cormort","corstorm","cortermite", "cordefiler","armsnipe", },
	--heavybot={"armmark", "armzeus", "corsumo","armfboy","armham","armvader","armwar","corcan","corroach","corthud",
	--          "cormando","armmav","armspid",},
	superunit={"corkrog","armbanth", "armorco","armraz","corkarg","corthovr","krogtaar","meteor",},

	--++++==== Vehicles
	vehicle = {		"armflash", "armyork", "corsent", "cormuskrat", "cormls", "armacv", "armcv", "armmls", "coracv", "corfast",
					   "critter_ant", "critter_duck", "critter_goldfish", "critter_gull", "critter_penguin", "corcv", "corgator",
					   "armlatnk","armfav","armjanus","armmlv","armsh","armspy","coresupp","corfav","corst",
					   "corlevlr","corsh","decade","marauder","nsaclash","armfido","armmart","armsam", "cormist",
					   "armmerl","corcat","armshock","cormart","cormh","corvroc","corwolv","corjugg","shiva","tawf013",
					   "cortrem", "corban","corvrad",},
	armorveh={"armanac","armbull","armcroc","armlun","armpincer","armscab","armseer","armstump","armthovr","cordl",
			  "coreter","corgarp","corgol","cormabm","cormlv","corparrow","corraid","correap","corseal","corsnap",
			  "corsok","armintr","armmanni", "armjam",},
	--lightveh = {
	--	"armflash", "armyork", "corsent", "cormuskrat", "cormls", "armacv", "armcv", "armmls", "coracv", "corfast",
	--	"critter_ant", "critter_duck", "critter_goldfish", "critter_gull", "critter_penguin", "corcv", "corgator",
	--   "armlatnk","armfav","armjanus","armmlv","armsh","armspy","coresupp","corfav","corst",
	--   "corlevlr","corsh","decade","marauder","nsaclash",
	--},
	--supportveh = {"armfido","armmart","armsam", "cormist", "armmerl","corcat","armshock","cormart","cormh","corvroc",
	--			  "corwolv","corjugg","shiva","tawf013","cortrem", "corban","corvrad",},
	--
	--heavyveh={"armanac","armbull","armcroc","armlun","armpincer","armscab","armseer","armstump","armthovr","cordl",
	--         "coreter","corgarp","corgol","cormabm","cormlv","corparrow","corraid","correap","corseal","corsilo","corsnap",
	--         "corsok","armintr","armmanni", "armjam",},

	--++++==== Air

	air = { "armfig","armhawk","corveng","corvamp", },
	armorair={"corbw","armaca","armawac","armca","armcsa","armsehak","armsfig","corawac","corca","corcsa",
			  "corhunt","corsfig","armkam","armatlas","armbrawl","armdfly","armpeep","armsaber","armseap",
			  "corseah","corape","corcut","corfink","corseap","corvalk","armblade","armliche","armlance",
			  "armpnix","armsb","armthund","corstil","corhurc","corsb","corshad","cortitan","corcrw",},
	--lightair={"corbw","armaca","armawac","armca","armcsa","armfig","armhawk","armsehak","armsfig","corawac","corca","corcsa","corhunt","corsfig","corvamp","corveng",},
	--supportair={"armkam","armatlas","armbrawl","armdfly","armpeep","armsaber","armseap","corseah","corape","corcut","corfink","corseap","corvalk","armblade",},
	--heavyair={"armliche","armlance","armpnix","armsb","armthund","corstil","corhurc","corsb","corshad","cortitan","corcrw",},

	--++++==== Structures & Defenses
	structure = {"armsolar", "corsolar", "armmex", "cormex", "armmoho", "cormoho","armfus","corfus","armafus","corafus",
				 "armuber","coruber","armgeo","armgmm","armageo","armuwmex","armuwmme","armtide","coruwmex","coruwmme","cortide",
				 "armoutpost","armoutpost2","armoutpost3","armoutpost4","coroutpost","coroutpost2","coroutpost3","coroutpost4","armtech","armtech2", "armtech3","armtech4",
				 "cortech","cortech2", "cortech3","cortech4","armawin","corawin","armjuno","armaap","armadvsol","armalab","armap","armarad","armason",
				 "armasp","armasy","armavp","armbeaver","armckfus","armdf","armestor","armeyes","armfatf","armfdrag","armfgate","armfhp","armfmine3","armfmkr","armfort","armfrad",
				 "armgate","armhp","armjamt","armlab","armmakr","armmine1","armmine2","armmine3","armnanotc","armrad","armsd","armshltx",
				 "armveil","armvp","armwin","asubpen","corjuno","corageo","coraap","coradvsol","coralab","corap","corarad","corason","corasp","corasy","coravp",
				 "cordrag","corestor","coreyes","corfatf","corfdrag","corfhp","corfmine3","corfmkr","corfort","corfrad","corgant","corgantuw","corgeo","corhp",
				 "corjamt","corlab","cormakr","cormexp","cormine1","cormine2","cormine3","cormine4","cormmkr","cormstor","cornanotc","corrad","corsd",
				 "corshroud","corsonar","corsy","cortarg","cortron","coruwadves","coruwadvms","coruwes","coruwfus","coruwmmm","coruwms",
				 "corvp","corwin","csubpen","tllmedfusion","armsonar","scavengerdroppodbeacon_scav","armmstor", "armuwadvms",
				 "armsilo", "corsilo",
	},

	defense = {"armvulc","armamb","armamd","armclaw","armdl","armdrag","armemp","armfhlt","armguard","armhlt","armllt",
			   "armpb","corbhmth","corbuzz","corexp","corfgate","corfhlt","cormaw","corfmd","corgate",
			   "corhlt","corllt","corhllt","corpun","cortoast","corvipe","hllt","armbeamer","armbrtha","corint","armamex",
			   "armrl","armatl","armcir","armdeva","armfflak","armflak","armfrt","coratl","corenaa","corerad","corflak",
			   "corfrt","corrl","madsam","armmercury","corscreamer","cordoom","armanni","armptl","corptl","armtl","cortl",
			   "armkamturret", "corbwturret",
	},
	--defense={"armvulc","armamb","armamd","armclaw","armdl","armdrag","armemp","armfhlt","armguard","armhlt","armllt","armpb","corbhmth","corbuzz","corexp","corfgate","corfhlt","cormaw","corfmd","corgate","corhlt","corllt","corhllt","corpun","cortoast","corvipe","hllt","armbeamer","armbrtha","corint","armamex",},
	--
	--defenseaa={"armrl","armatl","armcir","armdeva","armfflak","armflak","armfrt","coratl","corenaa","corerad","corflak","corfrt","corrl","madsam","armmercury","corscreamer","cordoom","armanni","armptl","corptl","armtl","cortl",},
	--
	--resource={ "armsolar", "corsolar", "armmex", "cormex", "armmoho", "cormoho","armfus","corfus","armafus","corafus","armuber","coruber","armgeo","armgmm","armageo",
	--   "armuwmex","armuwmme","armtide","coruwmex","coruwmme","cortide",},
	--
	--structure={"armoutpost","armoutpost2","armoutpost3","armoutpost4","coroutpost","coroutpost2","coroutpost3","coroutpost4","armtech","armtech2", "armtech3","armtech4",
	--	"cortech","cortech2", "cortech3","cortech4","armawin","corawin","armjuno","armaap","armadvsol","armalab","armap","armarad","armason",
	--	"armasp","armasy","armavp","armbeaver","armckfus","armdf","armestor","armeyes","armfatf","armfdrag","armfgate","armfhp","armfmine3","armfmkr","armfort","armfrad",
	--	"armgate","armhp","armjamt","armlab","armmakr","armmine1","armmine2","armmine3","armnanotc","armrad","armsd","armshltx",
	--	"armveil","armvp","armwin","asubpen","corjuno","corageo","coraap","coradvsol","coralab","corap","corarad","corason","corasp","corasy","coravp",
	--	"cordrag","corestor","coreyes","corfatf","corfdrag","corfhp","corfmine3","corfmkr","corfort","corfrad","corgant","corgantuw","corgeo","corhp",
	--	"corjamt","corlab","cormakr","cormexp","cormine1","cormine2","cormine3","cormine4","cormmkr","cormstor","cornanotc","corrad","corsd",
	--	"corshroud","corsonar","corsy","cortarg","cortron","coruwadves","coruwadvms","coruwes","coruwfus","coruwmmm","coruwms",
	--	"corvp","corwin","csubpen","tllmedfusion","armsonar","scavengerdroppodbeacon_scav"},

	--++++==== Ships

	ship = { "corpt", "corcrus", "armpt", "armcrus", "armcs", "armacsub", "armpship", "armrecl", "armmship", "armsjam",
			 "armaas", "corcs", "coracsub", "corpship", "correcl", "cormship", "corsjam", "corbow", },
	armorship = {"armroy", "armtship", "armbats", "armsub", "armcarry", "armepoch",
				 "corshark", "corssub", "corcarry", "corroy", "cortship", "corbats", "corblackhy",} ,

	--lightship = {"corpt", "corcrus", "armpt", "armcrus",},
	--supportship = {"armcs", "armacsub", "armpship", "armrecl", "armmship", "armsjam", "armaas",
	--			   "corcs", "coracsub", "corpship", "correcl", "cormship", "corsjam", "corbow",},
	--heavyship = {"armroy", "armtship", "armbats", "armsub", "armcarry", "armepoch",
	--			 "corshark", "corssub", "corcarry", "corroy", "cortship", "corbats", "corblackhy",} ,

	--++++==== Extras
	commander = {
		"armcom", "armcom1", "armcom2", "armcom3", "armcom4", "armdecom", "corcom", "corcom1", "corcom2", "corcom3", "corcom4","cordecom","armcomboss","corcomboss",
	},

	shield = {
		"armflash_shield",
	},

	ore = { "orelrg", "oreuber", "oremoho", "oresml", },

	--//OLDER / OBSOLETE:
	--CHICKEN = {
	--"nest",
	--"chicken_drone",
	--"chicken_digger",
	--"chickens",
	--"chickenr",
	--"chicken_dodo",
	--"chickena",
	--"chickenc",
	--"chicken_spidermonkey",
	--"chicken_listener",
	--"chickenq",
	--"chickent",
	--"chicken_sporeshooter",
	--"chickenwurm",
	--"chicken_leaper",
	--"chickenblobber",
	--"chicken_shield",
	--"chicken_tiamat",
	--"chicken_dragon",
	--},

	-- populated automatically
	PLANES = {
	"empiricaldpser",
	},
	ELSE   = {},
	SHIELD = {},
}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local function tobool(val)
  local t = type(val)
  if (t == 'nil') then
    return false
  elseif (t == 'boolean') then
    return val
  elseif (t == 'number') then
    return (val ~= 0)
  elseif (t == 'string') then
    return ((val ~= '0') and (val ~= 'false'))
  end
  return false
end

-- put any unit that doesn't go in any other category in ELSE
for name, ud in pairs(DEFS.unitDefs) do
  local found
  for categoryName, categoryTable in pairs(armorDefs) do
    for _, usedName in pairs(categoryTable) do
      if (usedName == name) then
        found = true
      end
    end
  end
  if (not found) then
    if (tobool(ud.canfly)) then
      table.insert(armorDefs.PLANES, name)
    else
      table.insert(armorDefs.ELSE, name)
    end
  end
end

-- damage to shields modifiers
local EMP_DAMAGE_MOD = 1/3
local SLOW_DAMAGE_MOD = 1/3
local DISARM_DAMAGE_MOD = 1/3
local FLAMER_DAMAGE_MOD = 3
local GAUSS_DAMAGE_MOD = 1.5

-- Set shields to use their own armor type
for name, wd in pairs(DEFS.weaponDefs) do
	if wd.weapontype == "Shield" then
		wd.shieldarmortype = "SHIELD"
	end
end

--TODO: Fix/analyze
---- use categories to set shield and feature damage. Feature damage uses the default armor class
--for name, wd in pairs(DEFS.weaponDefs) do
--	if wd.name then
--
--	local weaponNameLower = wd.name:lower()
--	local maxDamage = -0.000001
--	for _, dAmount in pairs(wd.damage) do
--		maxDamage = math.max(maxDamage, dAmount)
--	end
--	for categoryName, _ in pairs(armorDefs) do
--		wd.damage[categoryName] = wd.damage[categoryName] or wd.damage.default
--	end
--	wd.damage.default = maxDamage
--	wd.damage.shield = maxDamage
--
--	-- Stats
--	wd.customparams.stats_damage = wd.customparams.stats_damage or maxDamage
--
--	-- raw_damage is damage per frame. shot_damage is full damage per reload.
--	wd.customparams.raw_damage = maxDamage/((wd.customparams.effective_beam_time or wd.beamtime or 1/30) * 30)
--	wd.customparams.shot_damage = maxDamage*(wd.projectiles or 1)*(wd.burst or 1)
--
--	-- damage vs shields
--	if wd.customparams and wd.customparams.damage_vs_shield then
--		wd.damage.shield = tonumber(wd.customparams.damage_vs_shield)
--	else
--		local cp = wd.customparams or {}
--
--		if wd.paralyzer then
--			wd.damage.shield = maxDamage * EMP_DAMAGE_MOD
--		end
--
--		-- add extra damage vs shields for mixed EMP damage units
--		if cp.extra_damage then
--			wd.damage.shield = wd.damage.shield + tonumber(cp.extra_damage) * EMP_DAMAGE_MOD
--		end
--
--		if (cp.timeslow_damagefactor) then
--			if (tobool(cp.timeslow_onlyslow)) then
--				wd.damage.shield = 0
--			end
--			wd.damage.shield = wd.damage.shield + (tonumber(wd.customparams.timeslow_damagefactor) * maxDamage * SLOW_DAMAGE_MOD)
--		end
--
--		if (cp.disarmdamagemult) then
--			if (tobool(cp.disarmdamageonly)) then
--				wd.damage.shield = 0
--			end
--			wd.damage.shield = wd.damage.shield + (tonumber(wd.customparams.disarmdamagemult) * maxDamage * DISARM_DAMAGE_MOD)
--		end
--
--		-- weapon type bonuses
--		if weaponNameLower:find("flamethrower") or weaponNameLower:find("flame thrower") then
--			wd.customparams.shield_mult = FLAMER_DAMAGE_MOD
--			wd.damage.shield = wd.damage.shield * FLAMER_DAMAGE_MOD
--		elseif weaponNameLower:find("gauss") then
--			wd.customparams.shield_mult = GAUSS_DAMAGE_MOD
--			wd.damage.shield = wd.damage.shield * GAUSS_DAMAGE_MOD
--		end
--	end
--	wd.customparams.shield_damage = wd.damage.shield/((wd.customparams.effective_beam_time or wd.beamtime or 1/30) * 30)
--	wd.customparams.stats_shield_damage = wd.damage.shield
--	if wd.beamtime and wd.beamtime >= 0.1 then
--		-- Settings damage default to 0 removes cratering and impulse so is not universally applied.
--		-- It fixes long beams vs shield cases.
--		wd.damage.shield = 0
--	end
--
--	-- damage vs features
--	if wd.customparams and wd.customparams.damage_vs_feature then
--		wd.damage.default = tonumber(wd.customparams.damage_vs_feature)
--	else
--		local cp = wd.customparams or {}
--
--		if wd.paralyzer then
--			-- paralyzer is hardcoded in Spring to deal no wreck damage so this handling does nothing.
--			wd.damage.default = 0.001 -- Settings damage default to 0 removes cratering and impulse
--		end
--
--		if (cp.timeslow_damagefactor) and (tobool(cp.timeslow_onlyslow)) then
--			wd.damage.default = 0.001 -- Settings damage default to 0 removes cratering and impulse
--		end
--
--		if (cp.disarmdamagemult) and (tobool(cp.disarmdamageonly)) then
--			wd.damage.default = 0.001 -- Settings damage default to 0 removes cratering and impulse
--		end
--	end
--	end
--end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local function ProcessSoundDefaults(wd)
	local forceSetVolume = (not wd.soundstartvolume) or (not wd.soundhitvolume)

	if not forceSetVolume then
		return
	end

	local defaultDamage = wd.damage and wd.damage.default
	if (not defaultDamage) or (defaultDamage <= 50) then
		wd.soundstartvolume = 5
		wd.soundhitvolume = 5
		return
	end

	local soundVolume = math.sqrt(defaultDamage * 0.5)
	if wd.weapontype == "LaserCannon" then
		soundVolume = soundVolume*0.5
	end

	if (not wd.soundstartvolume) then
		wd.soundstartvolume = soundVolume
	end
	if (not wd.soundhitvolume) then
		wd.soundhitvolume = soundVolume
	end
end

for name, wd in pairs(DEFS.weaponDefs) do
	ProcessSoundDefaults(wd)
end

-- Copy regular unit armor def to its Scavengers counterpart
for categoryName, categoryUnits in pairs(armorDefs) do
	for _, thisUdID in pairs(categoryUnits) do
		if not string.find(thisUdID, '_scav') then
			table.insert(armorDefs[categoryName], thisUdID.."_scav")
			--Spring.Echo("Added Scav Unit: ", thisUdID, " to armorclass: "..categoryName)
		end
	end
end

local system = VFS.Include('gamedata/system.lua')

return system.lowerkeys(armorDefs)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
