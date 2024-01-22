---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by MaDDo.
--- DateTime: 31-Jul-19 4:55 PM
---
function gadget:GetInfo()
    return {
        name 	= "Upgrade - Per Unit",
        desc	= "Enables per-unit upgrades",
        author	= "MaDDoX",
        date	= "Sept 24th 2019",
        license	= "GNU GPL, v2 or later",
        layer	= -1,
        enabled = true,
        -- TODO: Currently only supports blocking/unblocking command buttons
    }
end

--[[    Full Upgrading Structure:

GlobalUpgrades [made by techcenter]
	=> Multiple upgrades per unit
	=> Provide / may require a team tech
	=> "Consumed" by other gadgets (GUHandler)
		* Morph Speedup (unit_morph.lua)
		* Button-unlock (update from capture)

PerUnitUpgrades [made by unit]
	=> One upgrade per unit (max)
	=> May require a team tech
	=> PUU Handlers: <rely on the global PUUunits table>
		* Button-unlock
		* Healing Pulse (Aura, increases health)
		* Overclock Pulse (Aura, increases speed + firerate)
		* Motor Hack (Weapon - reduces enemy move speed by 40%)
		* Weapon Switcher (disables primary, enables secondary weapon)
		* Locomotor Switcher (switches into whatever is defined into the targetLocomotor table)
]]

VFS.Include("LuaRules/colors.h.lua")
VFS.Include("gamedata/taptools.lua")
VFS.Include("LuaRules/Configs/upgradedata_perunit.lua")

--local spGetUnitDefID        = Spring.GetUnitDefID
--local spInsertUnitCmdDesc   = Spring.InsertUnitCmdDesc
--local spEditUnitCmdDesc     = Spring.EditUnitCmdDesc
--local spMarkerAddPoint      = Spring.MarkerAddPoint
--local spMarkerErasePosition = Spring.MarkerErasePosition
--local spGetUnitPosition     = Spring.GetUnitPosition
local spGetAllUnits         = Spring.GetAllUnits
local spGetUnitDefID        = Spring.GetUnitDefID
local spFindUnitCmdDesc     = Spring.FindUnitCmdDesc
local spGetUnitCmdDescs     = Spring.GetUnitCmdDescs
local spGetUnitTeam         = Spring.GetUnitTeam
local spSetUnitRulesParam   = Spring.SetUnitRulesParam
local spGetGameFrame        = Spring.GetGameFrame
local spUseUnitResource     = Spring.UseUnitResource
local spGetUnitHealth       = Spring.GetUnitHealth

local unitRulesParamName = "upgrade"
local unitRulesCompletedParamName = "upgraded"
local oldFrame = 0

local CMD_ATTACK = CMD.ATTACK

--local tooltipRequirement = "\n"..RedStr.."Requires ".. prereq,
--local UpgradeTooltip = 'Enables D-gun ability / command'
--local tooltipRequirement = "\n"..RedStr.."Requires ".. PUU.dgun.prereq
local upgradingUnits = {}   -- { [unitID] = { progress = 0, unitUpg = { id = "x", UpgradeCmdDesc = {}, ..} } }
local upgradedUnits  = {}
local upgradeLockedUnits = {} -- { [unitID] = { prereq = "", upgradeButton = cmdID, orgTooltip = "" .. }, ... }
local frameRate = 4

if not gadgetHandler:IsSyncedCode() then
    return end

local function startUpgrade(unitID, unitUpg, cmdParams)
    --Spring.Echo("Added "..unitID..", count: "..#upgradingUnits)
    upgradingUnits[unitID] = { progress = 0, unitUpg = unitUpg, }
    spSetUnitRulesParam(unitID, unitRulesParamName, 0)
end

local function cancelUpgrade(unitID)
    upgradingUnits[unitID] = nil
    spSetUnitRulesParam(unitID, unitRulesParamName, nil)
end

function gadget:AllowCommand(unitID,unitDefID,unitTeam,cmdID, cmdParams, cmdOptions)
    -- If unit is not complete, disallow upgrades
    if select(5, spGetUnitHealth(unitID)) < 1 then
        return true
    end
    local upgrade = UnitResearchers[unitDefID]
    if not upgrade then
        return true
    end
    local unitUpgrade = UnitUpgrades[upgrade]
    if unitUpgrade == nil then
        Spring.Echo("Upgrade not defined: "..upgrade)
        return true
    end
    local cmdDesc = unitUpgrade.UpgradeCmdDesc

    if cmdID == cmdDesc.id and (not upgradedUnits[unitID]) then
        local isUpgrading = upgradingUnits[unitID]
        --- If currently upgrading and right-clicked, cancel upgrade
        if isUpgrading then
            if cmdOptions.right == true then
                cancelUpgrade(unitID)
            else
                return true
            end
        else                --- Otherwise, check for requirements
            if HasTech(unitUpgrade.prereq, unitTeam) then
                startUpgrade(unitID, unitUpgrade, cmdParams) end
            --BlockCmdID(unitID, cmdID, cmdDesc.tooltip, "Upgrading")
            --cmdDesc.texture = cmdDesc.texture:gsub(".dds", "_wip.dds") -- "Upgrade in progress" texture
            --cmdDesc.params.refresh = "true"
            --AddUpdateCommand(unitID, cmdDesc)
        --else
            --LocalAlert(unitID, "Requires: ".. unitUpg.prereq)
        end
    end
    return true
end

function gadget:Initialize()
    --for _,upgrade in pairs(UnitUpgrades) do
    --    UnitUpgrades[upgrade] = true
    --end
    -- Sets the dgun cursor to the FireRain ability
    Spring.AssignMouseCursor("firerain", "cursordgun", false)
    --GG.UnitUpgrades = UnitUpgrades
    local allUnits = spGetAllUnits()
    for i = 1, #allUnits do
        local unitID    = allUnits[i]
        local unitDefID = spGetUnitDefID(unitID)
        local unitTeam  = spGetUnitTeam(unitID)
        gadget:UnitCreated(unitID, unitDefID, unitTeam)
    end
end

function gadget:UnitCreated(unitID, unitDefID, unitTeam)
    local upgrade = UnitResearchers[unitDefID]
    if not upgrade then
        return end
    --Spring.Echo("Found locally available upgrade: "..upgrade)

    local unitUpg = UnitUpgrades[upgrade]
    if unitUpg then
        local cmdIdx
        local cmdDesc
        if unitUpg.buttonToUnlock then
            -- Store original buttonToUnlock tooltip for later usage (add suffix / restore)
            cmdIdx = spFindUnitCmdDesc(unitID, unitUpg.buttonToUnlock)
            cmdDesc = spGetUnitCmdDescs(unitID, cmdIdx, cmdIdx)[1]
            if cmdDesc then
                unitUpg.buttonToUnlockTooltip = cmdDesc.tooltip end
            -- If it should block the attack command, must also block its weapon to prevent auto-fire
            if unitUpg.buttonToUnlock == CMD_ATTACK then
                Spring.SetUnitWeaponState(unitID, 1, "range", 0)    --- Hardcoded to Weapon 1
            end
            -- Disable upgrade-locked button (since it's per-unit, it always starts locked)
            BlockCmdID(unitID, unitUpg.buttonToUnlock, unitUpg.buttonToUnlockTooltip, "Requires: "..upgrade.." upgrade [per-unit]")
        end

        -- Add upgrade Cmd, block & add it to watch list, if tech not yet available
        local block = not HasTech(unitUpg.prereq, unitTeam)
        AddUpdateCommand(unitID, unitUpg.UpgradeCmdDesc, block)

        if block then
            upgradeLockedUnits[unitID] = { prereq = unitUpg.prereq, upgradeButton = unitUpg.UpgradeCmdDesc.id,
                                           orgTooltip = unitUpg.UpgradeCmdDesc.tooltip }
        end
    end
end

function gadget:UnitDestroyed(unitID)
    upgradedUnits[unitID] = nil
    upgradingUnits[unitID] = nil
    upgradeLockedUnits[unitID] = nil
end

-- If unit was taken, apply unit-creation check
function gadget:UnitTaken(unitID, unitDefID, oldTeamID, teamID)
    self:UnitCreated(unitID, unitDefID, teamID)
    --if isDone(unitID) then self:UnitFinished(unitID, unitDefID, teamID) end
end

function gadget:UnitGiven(unitID, unitDefID, newTeamID, oldTeamID)
    self:UnitDestroyed(unitID, unitDefID, oldTeamID)
end

local function finishUpgrade(unitID, unitUpg)
    -- If it should unblock the attack command, also unblock its weapons to re-allow auto-fire
    if unitUpg.buttonToUnlock == CMD_ATTACK then
        local weaponDefID = UnitDefs[Spring.GetUnitDefID(unitID)].weapons[1].weaponDef
        local origRange = WeaponDefs[weaponDefID].range
        --Spring.Echo("Restored range to: "..origRange)
        Spring.CallCOBScript(unitID, "showweapon", 0)
        Spring.SetUnitWeaponState(unitID, 1, "range", origRange)
    end

    -- Disable upgrade button on this unit
    BlockCmdID(unitID, unitUpg.UpgradeCmdDesc.id, unitUpg.UpgradeCmdDesc.tooltip)  --, "Requires: "..unitUpg.id)

    -- Enable action & remove "Requires" red alert at bottom
    UnblockCmdID(unitID, unitUpg.buttonToUnlock, unitUpg.buttonToUnlockTooltip)

    upgradingUnits[unitID] = nil
    upgradeLockedUnits[unitID] = nil -- Once an unit upgrade is complete we can safely stop watching its prereqs
    upgradedUnits[unitID] = true

    spSetUnitRulesParam(unitID, unitRulesParamName, nil)

    -- This is to be consumed by upghandlerpuus (like upghandlerpuu_hover.lua)
    spSetUnitRulesParam(unitID, unitRulesCompletedParamName, "1")

    --- Below is alerting all players about upgrade finished. Looks like an engine bug.
    --if unitUpg.alertWhenDone then
    --    LocalAlert(unitID, "Unit upgrade complete.")
    --end
end

function gadget:GameFrame(n)
    local frame = spGetGameFrame()
    if (frame <= oldFrame or n % frameRate > 0.0001) then
        return end
    oldFrame = frame

    --Watch all prereq blocked units to see if their prereqs are done/lost, block/unblock accordingly
    for unitID, data in pairs(upgradeLockedUnits) do
        local hasTech = HasTech(data.prereq, spGetUnitTeam(unitID))
        --Spring.Echo("HasTech "..data.prereq..": "..tostring(hasTech))
        if hasTech then
            UnblockCmdID(unitID, data.upgradeButton, data.orgTooltip)
            --SetCmdIDEnable(unitID, data.upgradeButton, false, data.orgTooltip, "Requires: "..data.prereq )
        elseif not upgradingUnits[unitID] then  -- won't block button if it's already upgrading
            BlockCmdID(unitID, data.upgradeButton, data.orgTooltip, "Requires: "..data.prereq )
        end
    end

    if not upgradingUnits or tablelength(upgradingUnits) == 0 then    -- If table empty, return
        return end

    --{ unitID = unitID, progress = 0, unitUpg = unitUpg, }
    for unitID, data in pairs(upgradingUnits) do
        local progress = data.progress
        local unitUpg = data.unitUpg
        if spUseUnitResource(unitID, { ["m"] = unitUpg.metalCost / unitUpg.upgradeTime, ["e"] = unitUpg.energyCost / unitUpg.upgradeTime }) then
            local progress = progress + 1 / unitUpg.upgradeTime -- TODO: Add "Morph speedup" bonus maybe?
            upgradingUnits[unitID].progress = progress
            spSetUnitRulesParam(unitID, unitRulesParamName, progress)
            if progress >= 1.0 then
                finishUpgrade(unitID, unitUpg)
            end
        end
    end
end

--local function isUpgrading(unitID)
--    for idx = 1, #upgradingUnits do
--        if upgradingUnits[idx].unitID == unitID then
--            return idx
--        end
--    end
--    return nil
--end

--- TODO: Move the tooltip description editing logic to taptools (somehow?)
--local function editCommand (unitID, cmdID, options)
--    local cmdDesc = spFindUnitCmdDesc(unitID, cmdID)
--    if not cmdDesc or not options then --or not options.defCmdDesc then
--        return end
--
--    if options.req and options.defCmdDesc then
--        local append = ""
--        if options.req == "perunit" then        -- Just tags if the button requirement is a per-unit upgrade
--            if not upgradedUnits[unitID] then
--                append = "\n\n"..RedStr.."Requires: "..options.defCmdDesc.name.." unit upgrade."
--                --append = options.missingPrereqTooltip
--            end
--        else
--            if not options.req == "" and not GG.TechCheck(options.req, spGetUnitTeam(unitID)) then
--                append = "\n\n"..RedStr.."Requires Tech: "..options.req
--            end
--        end
--        options.tooltip = ((options.tooltip == nil) and options.defCmdDesc.tooltip or options.tooltip) .. append
--    end
--
--    local currentCmdDesc = spGetUnitCmdDescs(unitID, cmdDesc, cmdDesc)[1]
--
--    currentCmdDesc.tooltip = options.tooltip and options.tooltip or currentCmdDesc.tooltip
--    currentCmdDesc.hidden = (options.hidden == nil) and currentCmdDesc.hidden or options.hidden
--    currentCmdDesc.disabled = (options.disabled == nil) and currentCmdDesc.disabled or options.disabled
--
--    spEditUnitCmdDesc (unitID, cmdDesc, currentCmdDesc)
--end

--AddUpdateCommand(unitID, puuItem.UpgradeCmdDesc.id, puuItem.UpgradeCmdDesc, { req=puuItem.Prereq, defCmdDesc=puuItem.UpgradeCmdDesc })
--local function addUpdateCommand(unitID, puuItem)
--    local insertID = puuItem.UpgradeCmdDesc.id
--    local cmdDesc = puuItem.UpgradeCmdDesc
--    local options = { req=puuItem.prereq, defCmdDesc=puuItem.UpgradeCmdDesc }
--
--    --local cmdDescId = spFindUnitCmdDesc(unitID, cmdDesc.id)
--    --if not cmdDescId then
--    --    spInsertUnitCmdDesc(unitID, insertID, cmdDesc)
--    --else
--    --    spEditUnitCmdDesc(unitID, cmdDescId, cmdDesc)
--    --end
--    --spEditUnitCmdDesc(unitID, cmdDescId, options)
--end

