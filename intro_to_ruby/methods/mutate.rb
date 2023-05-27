=begin
a = [1, 2, 3]

def mutate(array)
  array.pop
end
p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"
=end

a = [1, 2, 3]

def no_mutate(array)
  array.last
end

p "Before mutate method: #{a}"
no_mutate(a)
p "After mutate method: #{a}" 