person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

if person.has_value?("web developer")
  puts "found"
else
  puts "not there"
end