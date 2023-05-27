def countdown(num)
  if num <= 0
    puts num
  else
    countdown(num - 1)
    puts num
  end
end

puts countdown(10)