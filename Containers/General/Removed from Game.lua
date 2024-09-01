function onload()
  self.createButton({
      label="Empty", click_function="emptyTrash", function_owner=self,
      position={0,-0.1,0.5}, rotation={0,-0,0}, height=260, width=680, font_size=200
  })
end

function emptyTrash()
  Global.call("EmptyTrash", self)
  self.reset()
end

function tryObjectEnter(object)
local allow = Global.call("CheckRemovedEnter", object)
return allow
end