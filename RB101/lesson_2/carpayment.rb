require 'yaml'
MESSAGES = YAML.load_file('carpayment_messages.yml')
LANGUAGE = 'en'
VALID_YES = ['yes', 'si', 'y', 's']
VALID_NO = ['no', 'n']

def valid_answer?(answer)
  if VALID_YES.include?(answer) || VALID_NO.include?(answer)
    true
  else
    false
  end
end

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  puts("=> #{message}")
end

def number?(input)
  valid_number?(input) || float_validator?(input)
end

def float_validator?(input)
  input.to_f.to_s == input
end

def apr_to_monthly(apr)
  ((apr.to_f / 100) / 12)
end

def valid_number?(num)
  if num.to_i >= 0
    num.to_i.to_s == num
  else
    false
  end
end

def monthly_payment(total, interest, time)
  total.to_f * interest.to_f / (1 - (1 + interest.to_f)**(-time.to_f))
end

def add_years_months(year, month)
  (year.to_i * 12) + month.to_i
end

prompt('welcome')

loop do
  loan_total = ''
  loop do
    prompt('loan_amount')
    loan_total = gets.chomp

    if number?(loan_total)
      break
    else
      prompt('valid_loan')
    end
  end

  rate = ''
  loop do
    prompt('apr')
    rate = gets.chomp

    if number?(rate)
      break
    else
      prompt('valid_apr')
    end
  end

  puts "=> Your monthly rate is #{apr_to_monthly(rate).truncate(3) * 100}%"

  years = ''
  months = ''
  loop do
    prompt('loan_years')
    years = gets.chomp
    prompt('loan_months')
    months = gets.chomp

    if valid_number?(years) && valid_number?(months)
      break
    else
      prompt('valid_years_months')
    end
  end

  puts "=> #{monthly_payment(loan_total, apr_to_monthly(rate),
                             add_years_months(years, months)).round(2)} is \
your monthly payment"

  prompt('start_over')

  reply = ''
  loop do
    reply = gets.chomp
    if valid_answer?(reply) == false
      puts "Please enter a valid response"
    else
      break
    end
  end
  break if VALID_NO.include?(reply)
end
