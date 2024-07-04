def add(a, b)
  # return the result of adding a and b
  add = a + b
  puts "Add: #{add}"
end
add(1, 1)

def subtract(a, b)
  # return the result of subtracting b from a
  subtract = b - a
  puts "Subtract: #{subtract}"
end
subtract(2, 5)

def multiply(a, b)
  # return the result of multiplying a times b
  multiply = a * b
  puts "Multiply: #{multiply}"
end
multiply(3, 4)

def divide(a, b)
  # return the result of dividing a by b
  divide = a / b
  puts "Divide: #{divide}"
end
divide(8, 2)

def remainder(a, b)
  # return the remainder of dividing a by b using the modulo operator
  remainder =a % b
  puts "Remainder #{remainder}"
end
remainder(11, 5)

def float_division(a, b)
  # return the result of dividing a by b as a float, rather than an integer
  float_division = a / b
  puts "Float_division #{float_division}"
end
float_division(7.3, 2)

def string_to_number(string)
  # return the result of converting a string into an integer
  string_to_number = string.to_i
  puts "String: #{string}"
end
string_to_number("23")

def even?(number)
  # return true if the number is even (hint: use integer's even? method)
  puts number.even?
end
even?(4)
even?(3)

def odd?(number)
  # return true if the number is odd (hint: use integer's odd? method)
  puts number.odd?
end
odd?(8)
odd?(1)
