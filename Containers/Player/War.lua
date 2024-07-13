function tryObjectEnter(object)
  if object.hasTag('War') then
    return true -- Allows the object to enter.
  end
  return false
end