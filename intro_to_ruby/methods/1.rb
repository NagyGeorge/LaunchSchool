def greeting(name)
  puts "What is your name?"
  name = gets.chomp
  return puts "Hi #{name}"
end

puts greeting("yolo") 