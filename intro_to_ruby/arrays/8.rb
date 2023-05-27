arr = [1, 2, 3]

p arr
p arr.map { |x| x += 2 }

=begin
Man I got really lazy with this one, I should've created a variable for the new array
used the each method over it then << to add 2 to the new array. Should've looked like this.
arr = [1, 2, 3, 4, 5]
new_arr = []

arr.each do |n|
  new_arr << n + 2
end

p arr
p new_arr

I did get the same exact result though so maybe it's not so bad, not really sure
=end