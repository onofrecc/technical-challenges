# The goal is to implement an insertDash(word) function which takes a String as a parameter (the word) and returns a new String containing dashes between two consonants.
# insertDash("hello"); // => "hel-lo"
# insertDash("Le Wagon"); // => "Le Wagon"
# insertDash("Internationalization"); // => "In-ter-nationalization"

# CONSONANTS = Regexp.new (/[^aeiouAEIOU]/) # DOES NOT WORK PERFECTLY
CONSONANTS = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

def insert_dash(word)
  array_characters = word.chars
  new_string = ''

  array_characters.each_with_index do |character, index|
    if CONSONANTS.include?(character) && CONSONANTS.include?(array_characters[index - 1])
      new_string.insert(-1, "-#{character}")
    else
      new_string.insert(-1, character)
    end
  end

  new_string
end

# TESTS
p insertDash("hello")
p insertDash("Le Wagon")
p insertDash("Internationalization")
