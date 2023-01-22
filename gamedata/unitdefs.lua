local VFS = VFS
local VFS_Include = VFS.Include
local VFS_GAME = VFS.GAME
local VFS_MAP = VFS.MAP

--[[ unitdefs_post is massively simplified by being able to assume
     that all def keys are lowercase. However, being able to use
     uppercase in the defs is also good for readability (also we
     have to support modders with lax standards anyway). This is
     why lowerkeys are applied to all defs; this has nothing to do
     with the engine (all cases are accepted by Spring). ]]
local lowerKeys = VFS_Include('gamedata/system.lua').lowerkeys

VFS_Include("LuaRules/Utilities/tablefunctions.lua")
local suCopyTable = Spring.Utilities.CopyTable

local unitDefs = {}
UnitDefs = unitDefs

local preProcFile  = 'gamedata/unitdefs_pre.lua'
local postProcFile = 'gamedata/unitdefs_post.lua'

local shared = VFS_Include(preProcFile, nil, VFS_GAME)
Shared = shared

-- TODO: Clean-up later, temp for ZK units

local zkUnits = VFS.DirList('units', '*.lua', VFS_GAME)
for i = 1, #zkUnits do
	suCopyTable(lowerKeys(VFS_Include(zkUnits[i], nil, VFS_GAME)), false, unitDefs)
end

-- TODO: put dynamic unit generation (comms, planet wars stuff) here

local system = VFS.Include('gamedata/system.lua')
VFS.Include('gamedata/VFSUtils.lua')
local section = 'unitdefs.lua'

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  Load the raw LUA format unitdef files
--

local luaFiles = RecursiveFileSearch('units/', '*.lua')

for _, filename in ipairs(luaFiles) do
	local udEnv = {}
	udEnv._G = udEnv
	udEnv.Shared = shared
	udEnv.GetFilename = function() return filename end
	setmetatable(udEnv, { __index = system })
	local success, uds = pcall(VFS.Include, filename, udEnv, vfs_modes)
	if (not success) then
		Spring.Log(section, LOG.ERROR, 'Error parsing ' .. filename .. ': ' .. tostring(uds))
	elseif (type(uds) ~= 'table') then
		Spring.Log(section, LOG.ERROR, 'Bad return table from: ' .. filename)
	else
		for udName, ud in pairs(uds) do
			if ((type(udName) == 'string') and (type(ud) == 'table')) then
				unitDefs[udName] = ud
			else
				Spring.Log(section, LOG.ERROR, 'Bad return table entry from: ' .. filename)
			end
		end
	end
end


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  Run a post-processing script if one exists
--

if (VFS.FileExists(postProcFile)) then
	Shared   = shared    -- make it global
	UnitDefs = unitDefs  -- make it global
	VFS.Include(postProcFile)
	UnitDefs = nil
	Shared   = nil
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  Remove any invalid buildOptions from builders
--

for name, def in pairs(unitDefs) do
	local badOptions = {}
	local buildOptions = def.buildOptions or def.buildoptions
	if (buildOptions) then
		for i, option in ipairs(buildOptions) do
			if (unitDefs[option] == nil) then
				table.insert(badOptions, i)
				Spring.Log(section, LOG.ERROR, 'removed the "' .. option ..'" entry'
						.. ' from the "' .. name .. '" build menu')
			end
		end
		if (#badOptions > 0) then
			local removed = 0
			for _, badIndex in ipairs(badOptions) do
				table.remove(buildOptions, badIndex - removed)
				removed = removed + 1
			end
		end
	end
end

--[[ The checks in this file don't apply to map-defined units,
     only ZK-side, so can afford to be brutal (crash on failure).
     This ensures that mistakes and cargo cults don't go unnoticed. ]]
Game = Game or { gameSpeed = 30 } -- compat for 287, would ideally be in defs.lua but 287 has some VFS fuckup which disallows that (see below)
-- VFS_Include('gamedata/unitdefs_checks.lua', nil, VFS_GAME)

lowerkeys = lowerKeys -- legacy mapside defs might want it
local mapUnits = VFS.DirList('units', '*.lua', VFS_MAP)
for i = 1, #mapUnits do
	suCopyTable(lowerKeys(VFS_Include(mapUnits[i], nil, VFS_MAP)), false, unitDefs)
end

--[[ This would ideally be 'gamedata/unitdefs_post.lua' because that is
     the convention used in the past, back when map files overrode games'
     by default. Also it would be elegant if mappers could just copy our
     gameside file and get something working. However, there are issues
     preventing this from happening:

     1) VFS.FileExists is (as of 104-1435) broken and seems to behave as
        if the namespace argument was (VFS.BASE .. VFS.GAME .. VFS.MAP)
	 regardless of what it actually is. This would make us include the
	 file every time since it's present gameside. It could be worked
	 around by using pcall and ignoring an inclusion failure, but...

     2) VFS.Include is broken in the same way on old engines (specifically
        on 104-287 which we want to keep supporting for the time being).
     This means that the gameside posts would instead be included twice. ]]

local MAPSIDE_POSTS_FILEPATH = 'gamedata/unitdefs_map.lua'
if VFS.FileExists(MAPSIDE_POSTS_FILEPATH, VFS_MAP) then
	VFS_Include(MAPSIDE_POSTS_FILEPATH, nil, VFS_MAP)
end

--[[ This lets mutators add a bit of unitdefs_posts processing without
     losing access to future gameside updates to unitdefs_posts.]]
local MODSIDE_POSTS_FILEPATH = 'gamedata/unitdefs_mod.lua'
if VFS.FileExists(MODSIDE_POSTS_FILEPATH, VFS_GAME) then
	VFS_Include(MODSIDE_POSTS_FILEPATH, nil, VFS_GAME)
end

VFS_Include('gamedata/unitdefs_post.lua', nil, VFS_GAME)

return unitDefs
