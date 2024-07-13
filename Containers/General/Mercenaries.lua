function tryObjectEnter(object)
  if object.hasTag('Mercenary') then
    return true -- Allows the object to enter.
  end
  return false
end