function tryObjectEnter(object)
  if object.hasTag('TagChit') then
    return true -- Allows the object to enter.
  end
  return false
end