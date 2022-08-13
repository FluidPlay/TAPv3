return {
    coroutpost = {
        acceleration = 0,
        brakerate = 4.5,
        buildcostenergy = 3222,
        buildcostmetal = 600,
        builddistance = 400,
        builder = true,
        buildingGroundDecalDecaySpeed=30,
        buildingGroundDecalSizeX=5,
        buildingGroundDecalSizeY=5,
        buildingGroundDecalType="screamer_aoplane.dds",
        buildoptions = {"armmex",
                        "armsolar",
                        "armwin",
                        "armmakr",
                        "armgeo",
                        "armlab",
                        "armvp",
                        "armap",
                        "armestor",
                        "armmstor",
                        "armrad",
                        "armdrag",
                        "armllt",
                        "armuwmex",
                        "armtide",
                        "armsy",
                        "armptl", },
        buildpic = "ARMNANOTC.DDS",
        buildtime = 5312,
        cantbetransported = false,
        category = "ALL NOTSUB CONSTR NOWEAPON NOTAIR SURFACE",
        collisionvolumeoffsets = "0 0 0",
        collisionvolumescales = "31 32 31",
        collisionvolumetype = "CylY",
        description = "Repairs and builds in large radius",
        energyuse = 30,
        explodeas = "NANOBOOM2",
        footprintx = 6,
        footprintz = 6,
        icontype = "building",
        idleautoheal = 5,
        idletime = 1800,
        mass = 700,
        maxdamage = 1500,
        maxslope = 10,
        maxwaterdepth = 0,
        movementclass = "NANO",
        name = "Outpost",
        objectname = "armoutpost.dae",
        seismicsignature = 0,
        selfdestructas = "TINY_BUILDINGEX",
        sightdistance = 380,
        terraformspeed = 1000,
        turnrate = 1,
        upright = true,
        useBuildingGroundDecal = true,
        workertime = 200,
        sounds = {
            build = "nanlath1",
            canceldestruct = "cancel2",
            repair = "repair1",
            underattack = "warning1",
            working = "reclaim1",
            cant = {
                [1] = "cantdo4",
            },
            count = {
                [1] = "count6",
                [2] = "count5",
                [3] = "count4",
                [4] = "count3",
                [5] = "count2",
                [6] = "count1",
            },
            ok = {
                [1] = "varmmove",
            },
            select = {
                [1] = "varmsel",
            },
        },
    },
}
