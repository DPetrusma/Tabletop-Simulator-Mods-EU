function tryObjectEnter(object)
    if object.hasTag('Religion') then
      return true -- Allows the object to enter.
    end
    return false
  end