function tryObjectEnter(object)
  if object.hasTag('Claim') then
    return true -- Allows the object to enter.
  end
  return false
end