function tryObjectEnter(object)
  if object.hasTag('Vassal') then
    return true -- Allows the object to enter.
  end
  return false
end