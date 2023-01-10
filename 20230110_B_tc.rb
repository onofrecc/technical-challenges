# Challenge: Return common characters in an array.
# Longest common string prefix
#
# ["bat", "ball", "batter"] -> "ba"
# ["bat", "ball", "arm"] -> ""
# ["water plant", "water pump", "water pollution"] -> "water p"


def longest_common_prefix(array)
  array_letters= array.map { |word| word.chars }

  string = ''
  i = 0

  for letter in array_letters[0]
    if array_letters.uniq { |word| word[i] }.size == 1
      string += letter
      i += 1
    else
      break
    end
  end

  string
end


# TEST
p longest_common_prefix(["bat", "ball", "batter"])
p longest_common_prefix(["bat", "ball", "arm"])
p longest_common_prefix(["water plant", "water pump", "water pollution"])
