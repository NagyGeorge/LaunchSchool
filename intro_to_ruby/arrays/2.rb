1. arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last) # Returns 1 because it was deleted from the first sub array (had to watch the video)

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)   #I think it will delete [1, 2, 3] from the first sub array so it will return that. (didn't watch video ran portions of the code in IRB)

