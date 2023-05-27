#.merge merges the other hashes in the argument into a new hash without changing the originals
#.merge! actually merges the hashes together so the orignals are permanently changed, overwrites duplicates

hash1 = {
  value1: 1,
  value2: 2,
  value3: 3,
}

hash2 = {
  value4: 4,
  value5: 5,
  value6: 6,
}

hash3 = {}

# puts hash3.merge(hash1, hash2)

puts hash3.merge!(hash1, hash2)