local Real = require "real_number"
local Imaginary = require "imaginary_number"

Complex = {}

function Complex:new(realNumber, imaginaryNumber)
  local private = {}
  private.realNumber = Real:new(realNumber)
  private.imaginaryNumber = Imaginary:new(imaginaryNumber)
  private.actualType = "Complex Number"
  
  local public = {}
  --
  function public:getType()
    return private.actualType
  end
  --
  function public:getRealPart()
    return private.realNumber:getValue()
  end
  --
  function public:getImaginaryPart()
    return private.imaginaryNumber:getValue()
  end
  function public:getValue()
    return public:getRealPart(), public:getImaginaryPart()
  end
  --Метод сложения
  function public:add(complexNumber)
    local real = self:getRealPart() + complexNumber:getRealPart()
    local imaginary = self:getImaginaryPart() + complexNumber:getImaginaryPart()
    return Complex:new(real, imaginary)
  end
  --Метод разности
  function public:sub(complexNumber)
    local real = self:getRealPart() - complexNumber:getRealPart()
    local imaginary = self:getImaginaryPart() - complexNumber:getImaginaryPart()
    return Complex:new(real, imaginary)
  end
  --[[Метод произведения
  function public:add(complexNumber)
    local real = self:getRealPart() * complexNumber:getRealPart()
    local imaginary = self:getImaginaryPart() * complexNumber:getImaginaryPart()
    return real, imaginary
  end]]--
  --[[Метод деления
   function public:add(complexNumber)
    local real = self:getRealPart() + complexNumber:getRealPart()
    local imaginary = self:getImaginaryPart() + complexNumber:getImaginaryPart()
    return real, imaginary
  end]]--
  
  setmetatable(public, self)
  self.__index = self
  --
  return public
end

return Complex