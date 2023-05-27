# Question 1
# numbers = [1, 2, 2, 3]
# numbers.uniq

# puts numbers

# Question 2

# 1. != means not equal to you can use it in loops or conditionals
# 2. if you put ! before user_name it will mean not user_name return false
# 3. adding ! after a method call can mean it's potentially a destructive method
# 4. if you put ? before something it's evaluating for true or false
# 5. if you put ? after something it's evaluating for ture or false for what comes after
# 6. if you put !! before something it cancels out the first ! and makes it true

# Question 3
# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.gsub!('important', 'urgent')

# Question 4

# numbers = [1, 2, 3, 4, 5]

# numbers.delete_at(1)
# numbers.delete(1)

# delete_at is deleting at index [1]
# delete is deleting anything matching the argument that's passed in

# Question 5
# nums = 10..100

# nums.cover?(42)

# Question 6

# famous_words = "seven years ago..."

# puts "four score and " << famous_words

# puts "four score and " + famous_words

# Question 7

# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]

# flintstones.flatten!

# Question 8

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# flintstones.assoc("Barney")