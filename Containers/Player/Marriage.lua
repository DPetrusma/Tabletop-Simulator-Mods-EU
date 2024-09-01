function tryObjectEnter(object)
  if object.hasTag('Marriage') then
    return true -- Allows the object to enter.
  end
  return false
end