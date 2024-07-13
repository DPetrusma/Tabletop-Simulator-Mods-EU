function tryObjectEnter(object)
  if object.hasTag('Expanded_Trade') then
    return true -- Allows the object to enter.
  end
  return false
end