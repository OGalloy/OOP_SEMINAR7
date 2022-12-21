local Number = require ("number")
Imaginary = {}

setmetatable(Imaginary, {__index = Number})
--
function Number:getType()
  return "Imaginary Number"
end
return Imaginary
--[[com1 = Imaginary:new(1234)
com2 = Imaginary:new(234)

print(com1.getValue())
print(com2.getValue())
print(com2.getType())
print(com1.getType())]]--