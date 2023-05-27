def sum_of_integers(integers)
  var = 0
  var2 = 0
  loop do
    if var == integers
      break
    else
      var += 1
      var2 = var + var2
    end
  end
  var2
end

def product_of_integers(p_integers)
  var = 0
  var2 = 1
  loop do
    if var == p_integers
      break
    else
      var += 1
      var2 = var * var2
    end
  end
  var2
end

puts "Please enter an integer greater than 0:"
num1 = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operator = gets.chomp.downcase

operation = ''
if operator == 's'
  operation = 'sum'
elsif operator == 'p'
  operation = 'product'
end

operation.match?('s') ? solution = sum_of_integers(num1) : solution = product_of_integers(num1)

puts "The #{operation} of the integers between 1 and #{num1} is #{solution}"
