puts "Insert your number:"

num = gets.chomp.to_i


if 
  num >= 0 && num <= 50 
  puts "Your number is between zero and fifty."
elsif 
  num >= 51 && num <= 100
  puts "Your number is between fifty one and one hundred."
elsif
  num > 100
  puts "Your number is greater than one hundred"
end
