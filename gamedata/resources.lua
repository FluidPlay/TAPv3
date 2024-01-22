-- $Id: resources.lua 4609 2009-05-12 01:32:58Z carrepairer $
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
--  file:    resources.lua
--  brief:   resources definitions
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local resources = {
	graphics = {
		groundfx = {
			groundflash='GPL/groundflash.tga',
			groundring='groundring.tga',
			seismic='GPL/circles.png',
		},

		maps = {
			detailtex='detailtex2.bmp',
			watertex='ocean.jpg',
		},

		smoke = {
			'smoke/smoke00.tga',
			'smoke/smoke01.tga',
			'smoke/smoke02.tga',
			'smoke/smoke03.tga',
			'smoke/smoke04.tga',
			'smoke/smoke05.tga',
			'smoke/smoke06.tga',
			'smoke/smoke07.tga',
			'smoke/smoke08.tga',
			'smoke/smoke09.tga',
			'smoke/smoke10.tga',
			'smoke/smoke11.tga',
		},

		scars = {
			'unknown/enlarge/scar1.png',
			'unknown/enlarge/scar2.png',
			'unknown/enlarge/scar3.png',
			'unknown/enlarge/scar4.png',
		},

		trees = {
			bark='Bark.bmp',
			leaf='bleaf.bmp',
			gran1='gran.bmp',
			gran2='gran2.bmp',
			birch1='birch1.bmp',
			birch2='birch2.bmp',
			birch3='birch3.bmp',
		},

		projectiletextures = {

			-- MANUAL
			bar_dirt       = 'CC/bar_icexuick/dirt.png',
			bar_explowater = 'CC/bar_icexuick/explowater.tga',
			bar_gunshotxl  = 'CC/bar_icexuick/gunshotxl.tga',
			bar_waterrush  = 'CC/bar_icexuick/waterrush.tga',
			bar_wave       = 'CC/bar_icexuick/wave.tga',

			-- MANUAL
			flarescale01='flarescale01.tga',

			["3explo"]= "cc/3explo.tga",
			AAsmoketrail= "AAsmoketrail.tga",
			bigexplo= "cc/bigexplo.tga",
			bluelight = "other/light_blue.png",
			bluenovaexplo= "cc/bluenovaexplo.tga",
			bluering= "cc/bluering.tga",
			brightblueexplo='CC/brightblueexplo.tga',
			burncircle='PD/burncircle.tga',
			chargeparticles='PD/chargeparticles.tga',
			corelaser= "gpl/corelaser.png",
			darksmoketrail= "darksmoketrail.tga",
			debris2= "other/debris2.tga",
			diamondstar= "other/diamondstar.tga",
			dirt= "cc/dirt.png",
			dirtplosion2= "pd/dirtplosion2.tga",
			dosray = "pd/dosray.tga",
			dust= "other/dust.tga",
			energywave= "other/energywave.tga",
			electnovaexplo= "cc/electnovaexplo.png",
			exp00_1= "gpl/explosion2/exp00_1.tga",
			exp00_10= "gpl/explosion2/exp00_10.tga",
			exp00_2= "gpl/explosion2/exp00_2.tga",
			exp00_3= "gpl/explosion2/exp00_3.tga",
			exp00_4= "gpl/explosion2/exp00_4.tga",
			exp00_5= "gpl/explosion2/exp00_5.tga",
			exp00_6= "gpl/explosion2/exp00_6.tga",
			exp00_7= "gpl/explosion2/exp00_7.tga",
			exp00_8= "gpl/explosion2/exp00_8.tga",
			exp00_9= "gpl/explosion2/exp00_9.tga",
			exp02_1= "gpl/explosion3/exp02_1.png",
			exp02_2= "gpl/explosion3/exp02_2.png",
			exp02_3= "gpl/explosion3/exp02_3.png",
			fireball= "pd/fireball.tga",
			fireyexplo= "cc/fireyexplo.tga",
			flareprojectiletexture= "pd/fireball.tga",
			flashside1= "cc/flashside1.tga",
			flashside2= "cc/flashside2.tga",
			flowerflash= "pd/flowerflash.tga",
			glow2 = "gpl/glow2.tga",
			greenlight= "other/light_green.png",
			greennovaexplo= "cc/greennovaexplo.tga",
			gunshot= "cc/gunshot.tga",
			gunshotglow= "gpl/gunshotglow.tga",
			kburst= "other/burst.tga",
			kfoam= "other/foam.tga",
			kfoom= "other/foom.tga",
			largelaser= "gpl/largelaserfalloff.png",
			largelaser_long= "gpl/largelaserfalloff_long.png",
			lightb= "pd/lightningball.tga",
			lightb3= "pd/lightningball3.tga",
			lightb4= "pd/lightningball4.tga",
			lightb_purple= "pd/lightningball_purple.png",
			lightening= "cc/lightening.tga",
			lightning= "pd/lightning.tga",
			lightring= "pd/lightring.tga",
			lightsmoketrail= "lightsmoketrail.tga",
			muzzlefront= "muzzlefront.tga",
			muzzleside= "muzzleside.tga",
			muzzleside2= "gpl/muzzleside.tga",
			new_dirta = "smoke/new_dirta.png",
			null= "pd/null.tga",
			orangesmoke= "pd/orangesmoke.tga",
			orangesmoke2= "pd/smokeorange.tga",
			orangesmoke3= "gpl/smoke_orange.png",
			pinknovaexplo= "cc/pinknovaexplo.tga",
			plasma= "GPL/plasma.tga",
			plasma0029= "other/plasma0029.tga",
			plasma2= "gpl/plasma.tga",
			plasma3= "gpl/plasmashot.png",
			purpletrail= "purpletrail.tga",
			redexplo= "cc/redexplo.tga",
			redlight= "other/light_red.png",
			sakexplo= "saktoths/sakexplo.tga",
			shell= "pd/shell.tga",
			shield= "pd/shield.png",
			shield2= "pd/shield2.png",
			shield3hex= "pd/shield3hex.png",
			shield3mist= "pd/shield3mist.png",
			shield3wake= "pd/shield3wake.png",
			smallflare= "gpl/smallflare.tga",
			smoke= "pd/smokesmall.tga",
			smokesmall= "pd/smokesmall.tga",
			smoketrailthinner= "pd/smoketrailthinner.tga",
			smoke1="pd/smoke1.tga",
			shockwave="pd/shockwave.tga",
			spark="pd/spark.tga",
			splashbase= "pd/splashbase.tga",
			splashside= "pd/splashside.tga",
			sporetrail= "gpl/sporetrail.tga",
			sporetrail2= "gpl/sporetrail2.tga",
			sporetrailblue= "gpl/sporetrailblue.tga",
			starexplo= "saktoths/starexplo.tga",
			uglynovaexplo= "cc/uglynovaexplo.tga",
			whitelightb= "pd/whitelightningball.tga",
			whitelightgpl = 'GPL/lightw.png',
			sonic_glow = "sonic_glow.png",
			sonic_glow2 = "sonic_glow2.png",
			bubble= "other/bubble.tga",
			csmoke0 = 'smoke/smoke00.tga',
			csmoke1 = 'smoke/smoke01.tga',
			csmoke2 = 'smoke/smoke02.tga',
			csmoke3 = 'smoke/smoke03.tga',
			csmoke4 = 'smoke/smoke04.tga',
			csmoke5 = 'smoke/smoke05.tga',
			csmoke6 = 'smoke/smoke06.tga',
			csmoke7 = 'smoke/smoke07.tga',
			csmoke8 = 'smoke/smoke08.tga',
			csmoke9 = 'smoke/smoke09.tga',
			csmoke10 = 'smoke/smoke10.tga',
			csmoke11 = 'smoke/smoke11.tga',

			-- Spring/TAP
			circularthingy		= 'default/circularthingy.tga',
			gfxtexture		    = 'default/circularthingy.tga', -- Used by the nano beam
			laserend			= 'default/laserend.tga',
			laserfalloff		= 'projectiletextures/laserfalloff.tga',
			randdots			= 'default/randdots.tga',
			smoketrail			= 'default/smoketrail.tga',
			wake				= 'default/wake.tga',
			flare				= 'default/flare.tga',
			flareprojectiletexture = 'default/flare.tga',
			explo				= 'default/explo.tga',
			explo2				= 'projectiletextures/explo2.tga',
			sakexplo2 			= 'projectiletextures/sakexplo2.tga',
			explofade			= 'default/explofade.tga',
			heatcloud			= 'default/explo.tga',
			flame				= 'default/flame.tga',
			flame_alt			= 'gpl/flame.png',
			fire				= 'gpl/fire.png',
			muzzlesideflipped	= 'projectiletextures/muzzlesideflipped.tga',
			muzzleside			= 'default/muzzleside.tga',
			muzzlefront			= 'default/muzzlefront.tga',
			largebeam			= 'default/largelaserfalloff.tga',
			null='PD/null.tga',

			--Chicken Defense effects
			uglynovaexplo='CC/uglynovaexplo.tga',
			sporetrail='GPL/sporetrail.tga',
			blooddrop='PD/blooddrop.png',
			bloodblast='PD/bloodblast.png',
			bloodsplat='PD/bloodsplat.tga',
			blooddropwhite='PD/blooddropwhite.tga',
			bloodblastwhite='PD/bloodblastwhite.tga',
		},
	},
}

local VFSUtils = VFS.Include('gamedata/VFSUtils.lua')

local function AutoAdd(subDir, map, filter)
	local dirList = RecursiveFileSearch("bitmaps/" .. subDir)
	for _, fullPath in ipairs(dirList) do
		local path, key, ext = fullPath:match("bitmaps/(.*/(.*)%.(.*))")
		if not fullPath:match("/%.svn") then
			local subTable = resources["graphics"][subDir] or {}
			resources["graphics"][subDir] = subTable
			if not filter or filter == ext then
				if not map then
					table.insert(subTable, path)
				else -- a mapped subtable
					subTable[key] = path
				end
			end
		end
	end
end

-- Add default caustics, smoke and scars
AutoAdd("caustics", false)
AutoAdd("smoke", false, "tga")
AutoAdd("scars", false)
-- Add mod groundfx and projectiletextures
AutoAdd("groundfx", true)
AutoAdd("projectiletextures", true)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

return resources

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
