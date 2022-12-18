--Базовый класс Number
Number = {}

function Number:new (value, actualType)
  
  --Приватные данные
  local private = {}
    private.value = value
    private.actualType = actualType 
  
  --Публичные данные и методы
  local public = {}
  function public:getValue()
    return private.value
  end
  --
  function public:setValue(newValue)
    private.value = newValue
  end
  --
  function public:getType()
    return private.actualType
  end
  --
  setmetatable(public, self)
  self.__index = self
  return public
end
