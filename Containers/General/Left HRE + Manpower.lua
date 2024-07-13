function tryObjectEnter(object)
  if object.hasTag('Left_HRE') then
    return true -- Allows the object to enter.
  end
  return false
end