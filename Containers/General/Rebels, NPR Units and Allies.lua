function tryObjectEnter(object)
  if object.hasTag('NPRLand') then
    return true -- Allows the object to enter.
  end
  return false
end