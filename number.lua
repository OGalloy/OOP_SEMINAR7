--Базовый класс Number
Number = {}

function Number:new (value)
  
  --Приватные данные
  local private = {}
    private.value = value
  
  --Публичные данные
  local public = {}
  function public:getValue()
    return private.value
  end
  function public:setValue(newValue)
    private.value = newValue
  end
  setmetatable(public, self)
  self.__index = self
  return public
end
num1 = Number:new(12)
num2 = Number:new(100)

--новый класс
real = Number:new()
function real:new(objType)
  self.objType = objType
end 
print(num1:getValue())
print(num2:getValue())
print(real:setValue(234))
print(real.getValue())

