function tryObjectEnter(object)
  if object.hasTag('DNPR_One') then
    return true -- Allows the object to enter.
  elseif object.hasTag('DNPR_Two') then
    return true -- Allows the object to enter.
  end
  return false
end