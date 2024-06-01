function tryObjectEnter(object)
  if object.hasTag('Cube') then
    return true -- Allows the object to enter.
  end
  return false
end