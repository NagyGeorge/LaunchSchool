def scream(words)
  words = words + "!!!!"
  puts words ## Removed the empty return since it was forcing the method to return to line 6 before being able to puts
end

scream("Yippeee") 