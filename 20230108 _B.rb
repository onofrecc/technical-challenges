# Counting words
# For this second exercise, we want you to write an occurrences(text, word) function which takes two String as parameters: a long text, and a word. This method should return a Number, being the number of occurrences of the word in the given text. This search should be case insensitive.

# Examples:
# occurrences("", "hello"); // => 0
# occurrences("Lorem ipsum dolor sit amet, consectetur adipisicing elit", "lorem"); // => 1
# occurrences("a fat cat sat on a mat and ate a fat rat", "at"); // => 0
# occurrences("a fat cat sat on a mat and ate a fat rat", "cat"); // => 1
# occurrences("a fat cat sat on a mat and ate a fat rat", "fat"); // => 2

def counting_words(text, word)
  count = 0

  text.downcase.split.each do |item|
    count += 1 if item == word.downcase
  end
  
  count
end

# TESTS
p counting_words("", "hello")
p counting_words("Lorem ipsum dolor sit amet, consectetur adipisicing elit", "lorem")
p counting_words("a fat cat sat on a mat and ate a fat rat", "at")
p counting_words("a fat cat sat on a mat and ate a fat rat", "cat")
p counting_words("a fat cat sat on a mat and ate a fat rat", "fat")
