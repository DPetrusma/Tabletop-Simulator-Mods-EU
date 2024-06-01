function onDrop(color)
  local pos = self.getPosition()
  if pos[1] < -26 then
      if self.is_face_down then
          self.setRotationSmooth({0,180,180})
      else
          self.setRotationSmooth({0,180,0})
      end
  elseif pos[3] > 14 then
      if self.is_face_down then
          self.setRotationSmooth({0,270,180})
      else
          self.setRotationSmooth({0,270,0})
      end
  else
      if self.is_face_down then
          self.setRotationSmooth({0,90,180})
      else
          self.setRotationSmooth({0,90,0})
      end
  end
end