# Longest common string prefix
#
# ["bat", "ball", "batter"] -> "ba"
# ["bat", "ball", "arm"] -> ""
# ["water plant", "water pump", "water pollution"] -> "water p"
# Filter out words that contained matching characters (from left to right) —if that makes sense

# LONGEST PREFIX SOLVED
def longest_prefix(array)
  longest_prefix = ''
  i = 0

  while array.all? { |word| word[i] == array[0][i] }
    longest_prefix += array[0][i]
    i += 1
  end

  longest_prefix
end

# FILTER IN PROCESS
def filter(array)
  longest_prefix = longest_prefix(array)
  return array if longest_prefix != '' #Guard clause

  new_array = []

  i = 0

  array.each_with_index do |element, index|
    index = 0
    while index=
    longest_prefix(element, )
  end

  if longest_prefix([array(i))

  if longest_prefix([array[0], array[1]]) != ''
    new_array << array[0]
  else

  end


end

# TESTS
p longest_prefix(["bat", "ball", "batter"])
p longest_prefix(["bat", "ball", "arm"])
p longest_prefix(["water plant", "water pump", "water pollution"])
p filter(["bat", "ball", "batter"])
p filter(["bat", "ball", "arm", "art"])
p filter(["arm", "ball", "bat"])
p filter(["water plant", "water pump", "water pollution"])

# ANOTHER OPTION FOR LONGEST PREFIX
# def longest_prefix(array)
#   longest_prefix = ''
#   i = 0

#   loop do
#     break unless array.all? { |word| word[i] == array[0][i] }

#     longest_prefix += array[0][i]
#     i += 1
#   end

#   longest_prefix
# end
