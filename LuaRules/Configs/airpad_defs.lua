local airpadDefs = {
	[UnitDefNames["armpad"].id] = {
		padPieceName = {"land1"}
	},
	[UnitDefNames["corpad"].id] = {
		padPieceName = {"land1"}
	},
	[UnitDefNames["armasp"].id] = {
		padPieceName = {"land1","land2","land3","land4"}
	},
	[UnitDefNames["corasp"].id] = {
		padPieceName = {"land1","land2","land3","land4"}
	},
}

for unitDefID, config in pairs(airpadDefs) do
    local ud = UnitDefs[unitDefID]

    config.mobile = (not ud.isImmobile)
    config.cap = tonumber(ud.customParams.pad_count)
end

return airpadDefs
