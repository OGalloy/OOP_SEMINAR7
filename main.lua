--путь до папки data
package.path = "./data/?.lua"..package.path
require("complex_number")

print("Программа - калькулятор комплексных чисел")

while true do
  print("Введите вещественную часть первого числа")
  num1Real = io.read()
  print("Введите мнимую часть первого числа")
  num1Imaginary = io.read()
  complexValue1 = Complex:new(num1Real, num1Imaginary)
  
  print("Введите вещественную часть второго числа")
  num2Real = io.read()
  print("Введите мнимую часть второго числа")
  num2Imaginary = io.read()
  complexValue2 = Complex:new(num2Real, num2Imaginary)
  
  print("Введите Операцию")
  print("add - сложение")
  print("sub - разность")
  print("mul - умножение")
  operator = io.read()
  result = nil
  if operator == "add" then
    result = complexValue1:add(complexValue2)
  elseif operator == "sub" then
    result = complexValue1:sub(complexValue2)
  elseif operator == "mul" then
    --result = complexValue1.mul(complexValue2)
  else
    print("Неизвестный оператор")
  end
  print(string.format("(%d+%di) + (%d+%di) = %d+%di", complexValue1:getRealPart(), complexValue1:getImaginaryPart(), 
                                                  complexValue2:getRealPart(), complexValue2:getImaginaryPart(),
                                                  result:getRealPart(), result:getImaginaryPart()))
end