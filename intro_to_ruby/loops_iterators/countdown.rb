=begin
puts "Enter a positive number"

x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

puts "Done!"
=end

puts "Please insert a number:"

x = gets.chomp.to_i

until x < 0
  puts x
  x -= 1
end

puts "Done!"