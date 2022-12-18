require "real_number"
require "imaginary_number"

Complex = {}

function Complex:new(realNumber, imaginaryNumber)
  local private = {}
  private.realNumber = Real:new(realNumber)
  private.imaginaryNumber = Imaginary:new(imaginaryNumber)
  
  local public = {}
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
  --
  setmetatable(public, self)
  self.__index = self
  --
  return public
end

comp = Complex:new(1233, 3434)

print(comp.getRealPart())
print(comp.getImaginaryPart())
print(comp.getValue())
