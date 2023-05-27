family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

close_family = family.select {  |key, value| (key == :sisters) || (key == :brothers) }

close_family.fetch_values(:brothers, :sisters).flatten

# I saw the .fetch_values() method in the documentation and just jumped straight to that since it returns what I need
# after .flatten

=begin
The solution from Launch School
immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten
p arr
=end