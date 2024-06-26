--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    callins.lua
--  brief:   array and map of call-ins
--  author:  Dave Rodgers
--
--  Copyright (C) 2007.
--  Licensed under the terms of the GNU GPL, v2 or later.
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

CallInsList = {
	"Shutdown",
	"LayoutButtons",
	"ConfigureLayout",
	"CommandNotify",
	"UnitCommandNotify",

	"KeyPress",
	"KeyRelease",
	"TextInput",
	"TextEditing",
	"MouseMove",
	"MousePress",
	"MouseRelease",
	"JoyAxis",
	"JoyHat",
	"JoyButtonDown",
	"JoyButtonUp",
	"IsAbove",
	"GetTooltip",
	"AddConsoleLine",
	"GroupChanged",
	"WorldTooltip",

	"GameLoadLua",
	"GameStartPlaying",
	"GameOver",
	"TeamDied",

	"UnitCreated",
	"UnitFinished",
	"UnitFromFactory",
	"UnitReverseBuilt",
	"UnitDestroyed",
	"RenderUnitDestroyed",
	"UnitTaken",
	"UnitGiven",
	"UnitIdle",
	"UnitCommand",
	"UnitSeismicPing",
	"UnitEnteredRadar",
	"UnitEnteredLos",
	"UnitLeftRadar",
	"UnitLeftLos",
	"UnitLoaded",
	"UnitUnloaded",
	"UnitHarvestStorageFull",

	"UnitEnteredWater",
	"UnitEnteredAir",
	"UnitLeftWater",
	"UnitLeftAir",

	"FeatureCreated",
	"FeatureDestroyed",

	"DrawGenesis",
	"DrawWater",
	"DrawSky",
	"DrawSun",
	"DrawGrass",
	"DrawTrees",
	"DrawWorld",
	"DrawWorldPreUnit",
	"DrawWorldPreParticles",
	"DrawWorldShadow",
	"DrawWorldReflection",
	"DrawWorldRefraction",
	"DrawScreenEffects",
	"DrawScreenPost",
	"DrawScreen",
	"DrawInMiniMap",
	'DrawOpaqueUnitsLua',
	'DrawOpaqueFeaturesLua',
	'DrawAlphaUnitsLua',
	'DrawAlphaFeaturesLua',
	'DrawShadowUnitsLua',
	'DrawShadowFeaturesLua',

	"Explosion",
	"ShockFront",

	"RecvSkirmishAIMessage",

	"GameFrame",
	"CobCallback",
	"AllowCommand",
	"CommandFallback",
	"AllowUnitCreation",
	"AllowUnitTransfer",
	"AllowUnitBuildStep",
	"AllowFeatureCreation",
	"AllowFeatureBuildStep",
	"AllowResourceLevel",
	"AllowResourceTransfer",

	"GameProgress",

	"DownloadQueued",
	"DownloadStarted",
	"DownloadFinished",
	"DownloadFailed",
	"DownloadProgress",

	"Save",
	"Load",
}


-- make the map
CallInsMap = {}
for _, callin in ipairs(CallInsList) do
	CallInsMap[callin] = true
end


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
