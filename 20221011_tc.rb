require 'matrix'

def print_matrix(parameter)
  parameter.each do |r|
    puts r.each { |p| p }.join(" ")
  end
end


def flipping_matrix(matrix)
  # final_matrix =[]
  print_matrix(matrix)
  matrix.each do |submatrix|
    submatrix.replace(submatrix.reverse) if submatrix[2] + submatrix[3] > submatrix[0] + submatrix[1]
  end
  puts "-------------"
  print_matrix(matrix)
  if matrix[2][0] + matrix[3][0] > matrix[0][0] + matrix[1][0]
    matrix [0][0], matrix[3][0] = matrix[3][0], matrix[0][0]
    matrix [1][0], matrix[2][0] = matrix[2][0], matrix[1][0]
  elsif matrix[2][1] + matrix[3][1] > matrix[0][1] + matrix[1][1]
    matrix[0][1], matrix[3][1] = matrix[3][1], matrix[0][1]
    matrix[1][1], matrix[2][1] = matrix[2][1], matrix[1][1]
  end
  puts "-------------"
  print_matrix(matrix)
  max_addition = matrix[0][0] + matrix[1][0] + matrix[0][1] + matrix[1][1]
  puts "-------------"
  puts max_addition
  max_addition
end


input = [[25,46,11,87],[125,3,67,83],[95,45,62,13],[40,28,101,23]]
flipping_matrix(input)


# matrix = Matrix.rows(input)
# # new_matrix = []
# matrix.each |row|
#   row[2] + row[3] > row[0] + row[1]
# end


# array = [4, 5, 6, 7]

# array[0], array[3] = array[3], array[0]

# array # => [7, 5, 6, 4]
