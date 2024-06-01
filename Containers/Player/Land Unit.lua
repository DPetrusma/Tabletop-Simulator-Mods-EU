function tryObjectEnter(object)
  if object.hasTag('LandUnit') then
    return true -- Allows the object to enter.
  end
  return false
end