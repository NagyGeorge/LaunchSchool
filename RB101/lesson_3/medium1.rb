# Question 1
#
# 10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
#
# Question 2
#
# You can't concatenate integers and strings
#
# Question 3
#
# def factors(number)
#   divisor = number
#   factors = []
#   
#   loop do
#     if number <= 0
#       puts "Please don't enter 0 or a negative"
#       break
#     end
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   if divisor <= 0
#     break
#   end
# end
#   factors
# end
#
# Question 4
#
# << mutates the caller and + doesn't
#
# Question 5
#
# def fib(first_num, second_num)
#   limit = 15
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end
# 
# result = fib(0, 1)
# puts "result is #{result}"
#
# Question 6
#
# The output is: 34
#
# Question 7
#
