function tryObjectEnter(object)
  if object.hasTag('Battleground') then
    return true -- Allows the object to enter.
  end
  return false
end