hash1 = {
  value1: 1,
  value2: 2,
  value3: 3,
}

count = 0

loop do
  puts  hash1.values
  count += 1
  break if count == 1
end

loop do
  puts hash1.keys
  break
end

hash1.each {  |key, value| puts key && value }

hash1.each_key { |key| puts key }

hash1.each_value { |value| puts value }