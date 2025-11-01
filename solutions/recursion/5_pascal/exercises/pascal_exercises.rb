def pascal(row_number)
  current_line = [1]
  return current_line if row_number == 1

  previous_line = pascal(row_number - 1) + [0]
  previous_line.each_cons(2) { |a, b| current_line << a + b }

  current_line
end
