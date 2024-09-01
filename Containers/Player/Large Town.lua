function tryObjectEnter(object)
  if object.hasTag('LargeTown') then
    return true -- Allows the object to enter.
  end
  return false
end