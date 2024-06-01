function tryObjectEnter(object)
  if object.hasTag('NavalUnit') then
    return true -- Allows the object to enter.
  end
  return false
end