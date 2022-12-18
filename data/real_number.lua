require ("number")
Real = {}
Real = Number:new(nil, "RealNumber")
setmetatable(Real, {__index = Number})

function Real:new(value)
  self:setValue(value)
  return self
end