# X prints to 3, 3 times it is adding 1 to the variable x then puts at the end of the program
=begin
x = 0
3.times do
  x += 1
end
puts x
=end
# x probably gives an error since it is only defined in the method and is outside the scope. Probably undefined variable x

y = 0
3.times do
  y += 1
  x = y
end
puts x