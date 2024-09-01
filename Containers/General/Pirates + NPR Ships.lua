function tryObjectEnter(object)
  if object.hasTag('NPRFleet') then
    return true -- Allows the object to enter.
  end
  return false
end