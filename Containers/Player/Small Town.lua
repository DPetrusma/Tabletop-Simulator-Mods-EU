function tryObjectEnter(object)
  if object.hasTag('SmallTown') then
    return true -- Allows the object to enter.
  end
  return false
end