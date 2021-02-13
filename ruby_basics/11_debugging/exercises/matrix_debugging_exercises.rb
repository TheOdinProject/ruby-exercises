require 'pry'

# Creates an array of arrays to represent a mathematical matrix.
# This method has been implemented correctly and does not require debugging.
# ==== Examples
#  create_matrix("1")                    # => [[1]]
#  create_matrix("1 2\n3 4")             # => [[1,2],[3,4]]
#  create_matrix("1 2 3\n4 5 6\n7 8 9")  # => [[1,2,3],[4,5,6],[7,8,9]]
def create_matrix(matrix_string)
  lines = matrix_string.lines.map(&:chomp)
  binding.pry
  lines.map do |l|
    l.split(' ')
     .map(&:to_i)
  end
end

# Returns the row of a matrix.
# The tests will never ask for a row that doesn't exist.
# ==== Examples
#  get_row([[1,2],[3,4]], 1)  # => [1,2]
#  get_row([[1,2],[3,4]], 2)  # => [3,4]
def get_row(matrix, row)
  matrix[row]
end

# Returns the column of a matrix.
# The tests will never ask for a column that doesn't exist.
# ==== Examples
#  get_row([[1,2],[3,4]], 1)  # => [1,3]
#  get_row([[1,2],[3,4]], 2)  # => [2,4]
def get_column(matrix, column)
  matrix_transpose = matrix.transpose
  matrix_transpose[column]
end

# Returns the sum of a row in the matrix.
# The tests will never ask for a row that doesn't exist.
# ==== Examples
#  sum_of_row([[1,2],[3,4]], 1)  # => 3
#  sum_of_row([[1,2],[3,4]], 2)  # => 7
def sum_of_row(matrix, row)
  row = get_row(matrix, row + 1)
  sum = 0
  row.each { |number| sum += number }
end

# Returns the sum of a column in the matrix.
# The tests will never ask for a column that doesn't exist.
# ==== Examples
#  sum_of_column([[1,2],[3,4]], 1)  # => 4
#  sum_of_column([[1,2],[3,4]], 2)  # => 6
def sum_of_column(matrix, column)
  column = get_row(matrix, row + 1)
  sum = 0
  column.each { |number| sum -= number }
end
