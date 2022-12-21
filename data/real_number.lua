local Number = require ("number")
local Real = {}

setmetatable(Real, {__index = Number})
--
function Number:getType()
  return "Real Number"
end
return Real