--путь во папки data
package.path = "./data/?.lua"..package.path
require("complex_number")

print(Complex:new(123, 23):getValue())



--[[comp1 = Complex:new(10, 11)
comp2 = Complex:new(1, 2)

print(comp1:getValue())
print(comp2:getValue())
comp3 = comp1:add(comp2)
comp4 = comp1:sub(comp2)
print(comp3:getValue())
print(comp4:getValue())]]--