--Базовый класс Number
local Number = {}

function Number:new (value)
  
  --Приватные данные
  local private = {}
    private.value = value
  
  --Публичные данные и методы
  local public = {}
  function public:getValue()
    return private.value
  end
  --
  function public:setValue(newValue)
    private.value = newValue
  end
  --Устанавливаем для public Метатаблицу Number
  setmetatable(public, self)
  
  self.__index = self
  return public
end

return Number