require ("number")
Imaginary = {}
Imaginary = Number:new(nil, "Imaginary")
setmetatable(Imaginary, {__index = Number})

function Imaginary:new(value)
  self:setValue(value)
  return self
end