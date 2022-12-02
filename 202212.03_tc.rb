# The goal is to implement an insertDash(word) function which takes a String as a parameter (the word) and returns a new String containing dashes between two consonants.
# insertDash("hello"); // => "hel-lo"
# insertDash("Le Wagon"); // => "Le Wagon"
# insertDash("Internationalization"); // => "In-ter-nationalization"

def insertDash(string)
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

  new_string = ''
  string.each_char.with_index do |character, index|
    new_string += "-" if consonants.include?(character) && consonants.include?(string[index - 1])
    new_string += character
  end

  new_string
end

# TESTS
p insertDash("hello")
# => "hel-lo"
p insertDash("Le Wagon")
# => "Le Wagon"
p insertDash("Internationalization")
# => "In-ter-nationalization"

# p consonants.match?("b")
