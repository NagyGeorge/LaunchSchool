
def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt('Welcome to Calcualtor! Enter your name')

name = ''
loop do
  name = gets.chomp
  
  if name.empty?
    prompt("Make sure to use a valid name")
  else
    break
  end
end

  prompt("Hi #{name}")

loop do  # main loop
  num1 = ''
  loop do
    prompt("What's the first number?")
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt("Error invalid number")
    end
  end

  puts "Your first number is #{num1}"

  num2 = ''
  loop do
  prompt("What's the second number?")
  num2 = gets.chomp

    if valid_number?(num2)
      break
    else
      prompt("Error invalid number")
    end
  end
  puts "Your second number is #{num2}"

  operator_prompt = <<-MSG
      Which operation would you like to perform? 
    1) add 
    2) subtract 
    3) multiply 
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Please choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
    when '1'
      result = num1.to_i + num2.to_i
    when '2'
      result = num1.to_i - num2.to_i
    when '3'
      result = num1.to_i * num2.to_i
    when '4'
      result = num1.to_f / num2.to_f
  end


  prompt("The resust is #{result}")
  
  prompt("Do you want to do another calculation? y or n")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you come again")
