function onLoad()
  self.clearContextMenu()
  self.addContextMenuItem("Update Tuck Zones", UpdateTuckZones)
end

function UpdateTuckZones()
  Global.call("UpdateTuckZonePositions", nil)
end