function tryObjectEnter(object)
  if object.hasTag('Rebels') then
    return true -- Allows the object to enter.
  end
  return false
end