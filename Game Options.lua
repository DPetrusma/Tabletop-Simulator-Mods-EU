function onLoad()
    local rot = self.getRotation()
    if (rot[3] + 90) > 0 and (rot[3] + 90) < 180  then
      Global.call("SetLogging", false)
    else
      Global.call("SetLogging", true)
    end
    self.clearContextMenu()
    self.addContextMenuItem("Unlock Map", UnlockMainMapBoard)
  end
  
  function UnlockMainMapBoard()
    Global.call("UnlockButtonPressed", nil)
  end
  
  function onRotate(spin, flip, player_color, old_spin, old_flip)
    if flip ~= old_flip then
      if (flip + 90) > 0 and (flip + 90) < 180  then
        Global.call("SetLogging", false)
      else
        Global.call("SetLogging", true)
      end
    end
  end