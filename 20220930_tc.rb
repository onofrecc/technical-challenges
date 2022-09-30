# INSTRUCTIONS
# Longest common string prefix
#
# ["bat", "ball", "batter"] -> "ba"
# ["bat", "ball", "arm"] -> ""
# ["water plant", "water pump", "water pollution"] -> "water p"

# Create a method that would return matching characters



# SOLUTION
# INPUT: Array
# OUTPUT: String

def longest_common_string_prefix(input_array)
  return '' if input_array.empty?

  prefix = ''
  base = input_array[0]
  i = 0
  while i <= base.length - 1
    break unless input_array.all? { |x| x[i] == base[i]}

    prefix += base[i]
    i += 1
  end
  prefix
end

p longest_common_string_prefix(["bat", "ball", "batter"])
p longest_common_string_prefix(["bat", "ball", "arm"])
p longest_common_string_prefix(["water plant", "water pump", "water pollution"])
