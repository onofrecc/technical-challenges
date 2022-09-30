# INSTRUCTIONS
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



# SOLUTION USING TERNARY OPERATOR
(1..100).each do |num|
  num.to_s.include?('7') || (num % 7).zero? ? (puts 'JUF') : (puts num)
end

# SOLUTION USING IF... ELSE STATEMENT
(1..25).each do |num|
  # 1. Number contains 7: make it into string, check if any of the elements is 7
  if num.to_s.include?('7') || (num % 7).zero?
    puts 'JUF'
  else
    puts num
  end
end
