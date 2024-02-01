aiCommanders = {}
ploppableDefs = {}
for unitDefID, unitDef in pairs(UnitDefs) do
	local cp = unitDef.customParams
	if cp.ai_start_unit then
		aiCommanders[unitDefID] = true
	end
	if cp.ploppable then
		ploppableDefs[unitDefID] = true
	end
end

-- starting and innate resources may be overridden by modoptions in start_unit_setup.lua

-- starting resources
START_METAL   = 10000 -- 325
START_ENERGY  = 10000 --325

INNATE_INC_METAL   = 0 --2
INNATE_INC_ENERGY  = 0 --2

START_STORAGE = 0

COMM_SELECT_TIMEOUT = 30 * 15 -- 15 seconds

DEFAULT_UNIT = UnitDefNames["armcom"].id --dyntrainer_strike_base
DEFAULT_UNIT_NAME = "Bow Commander"

