function tryObjectEnter(object)
    if object.hasMatchingTag(self) then --I don't know if I can refer to self
      return true -- Allows the object to enter.
    end
    return false
  end