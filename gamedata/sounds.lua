-- see http://springrts.com/wiki/Sounds.lua for help
local Sounds = {
	SoundItems = {
		IncomingChat = {
			file = "sounds/ui/blank.wav",
			in3d = "false",
		},
		MultiSelect = {
			file = "sounds/ui/button9.wav",
			in3d = "false",
		},
		MapPoint = {
			file = "sounds/ui/beep6.wav",
			rolloff = 0.3,
			dopplerscale = 0,
		},
		FailedCommand = {
			file = "sounds/replies/cantdo4.wav",
		},
		LoudFlame = {
			file = "sounds/weapons/flamhvy1.wav",
			gain = 0.8,
			pitchmod = 0.01,
			gainmod  = 0.6,
		},
	},
}

--------------------------------------------------------------------------------
-- Automagical sound handling
--------------------------------------------------------------------------------
--local VFSUtils = VFS.Include('gamedata/VFSUtils.lua')

local optionOverrides = {
}

local defaultOpts = {
	gain = 0.8,
	pitchmod = 0,
	gainmod  = 0,
	dopplerscale = 0,
	maxconcurrent = 1,
	rolloff = 0,
}

local weaponOpts = {
	gain = 0.36,
	pitchmod = 0.01,
	gainmod  = 0.06,
	dopplerscale = 1.0,
	maxconcurrent = 4,
	rolloff = 0.5,
}

local replyOpts = {
	gain = 0.36,
	pitchmod = 0.01,
	gainmod  = 0.06,
	dopplerscale = 1.0,
	maxconcurrent = 2,
	rolloff = 0.2,
}

--local noVariation = {
--	dopplerscale = 0,
--	in3d = false,
--	pitchmod = 0,
--	gainmod = 0,
--	pitch = 1,
--	gain = 0.8,
--}

local ignoredExtensions = {
	["svn-base"] = true,
}

local function AutoAdd(subDir, generalOpts)
	generalOpts = generalOpts or {}

	local dirList = RecursiveFileSearch("sounds/" .. subDir)
	for i = 1, #dirList do
		local fullPath = dirList[i]
		local pathPart, ext = fullPath:match("sounds/(.*)%.(.*)")
		if not ignoredExtensions[ext] then
			local opts = optionOverrides[pathPart] or generalOpts
			Sounds.SoundItems[pathPart] = {
				file = fullPath,
				rolloff = opts.rollOff,
				dopplerscale = opts.dopplerscale,
				maxdist = opts.maxdist,
				maxconcurrent = opts.maxconcurrent,
				priority = opts.priority,
				in3d = opts.in3d,
				gain = opts.gain,
				gainmod = opts.gainmod,
				pitch = opts.pitch,
				pitchmod = opts.pitchmod
			}
		end
	end
end

-- add sounds
AutoAdd("ui", defaultOpts) --TEMP:ZK
AutoAdd("weapons", weaponOpts)
AutoAdd("replies", replyOpts)
AutoAdd("critters", replyOpts)

-- super-hacky form of overrides. It's almost 5AM, don't judge.. much :p
local files = VFS.DirList("sounds/weapons/")
local t = Sounds.SoundItems
for i=1,#files do
	local fileName = files[i]
	local fileId = string.sub(fileName, 16, string.find(fileName, ".wav") -1)

	if fileId == "disigun1" then
		t[fileId].gain = 0.075*0.3
	end
	if fileId == "xplomas2" then
		t[fileId].gain = 0.225*0.3
	end
	if fileId == "newboom" then
		t[fileId].gain = 0.045*0.3
	end
end

return Sounds
