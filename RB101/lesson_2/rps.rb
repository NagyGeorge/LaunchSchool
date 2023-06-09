VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  first == 'rock' && second == 'scissors' ||
    first == 'paper' && second == 'rock' ||
    first == 'scissors' && second == 'paper'
end

def display_result(player, computer)
  if win?(player, computer)
    prompt('You won')
  elsif player == computer
    prompt('Tie')
  else
    prompt('You lose')
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = ['rock', 'paper', 'scissors'].sample

  prompt("You chose #{choice} computer chose #{computer_choice}")

  display_result(choice, computer_choice)

  prompt('Do you want to continue?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  sleep 1
  system('clear')
end
