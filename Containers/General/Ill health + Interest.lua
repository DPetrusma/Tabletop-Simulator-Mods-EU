function tryObjectEnter(object)
  if object.hasTag('Ill_Health_Interest') then
    return true -- Allows the object to enter.
  end
  return false
end