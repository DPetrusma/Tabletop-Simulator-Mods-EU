function tryObjectEnter(object)
  if object.hasTag('Alliance') then
    return true -- Allows the object to enter.
  end
  return false
end