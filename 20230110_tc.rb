# Challenge: Change numbers (1 - 100) containing 7 OR can be divisible by 7

# Round of drinking game
# Shout "JUF" for numbers containing 7 and is divisible by 7
#
# 1
# 2
# ..
# 6
# "JUF"
# 8
# ..
# 13
# "JUF"
# 15


# SOLUTION USING TERNARY
def drinking_game_with_ternary
  string = ''

  (1..100).each do |number|
    (number % 7).zero? || number.to_s.chars.include?('7') ? string += "JUF\n" : string += "#{number}\n"
  end

  string
end

# TEST
puts drinking_game_with_ternary



# SOLUTION WITHOUT TERNARY
def drinking_game
  string = ''

  (1..100).each do |number|
    if (number % 7).zero?
      string += "JUF\n"
    elsif number.to_s.chars.include?('7')
      string += "JUF\n"
    else
      string += "#{number}\n"
    end
  end

  string
end

# TEST
puts drinking_game
