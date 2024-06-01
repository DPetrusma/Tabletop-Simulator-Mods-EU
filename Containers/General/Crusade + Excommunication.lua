function tryObjectEnter(object)
  if object.hasTag('Crusade') then
    return true -- Allows the object to enter.
  end
  return false
end