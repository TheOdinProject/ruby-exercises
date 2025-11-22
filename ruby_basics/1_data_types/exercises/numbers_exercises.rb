def add(a, b)
  # return the result of adding a and b
  a + b
end

def subtract(a, b)
  # return the result of subtracting b from a
  a-b
end

def multiply(a, b)
  # return the result of multiplying a times b
  a*b
end

def divide(a, b)
  # return the result of dividing a by b
  a-b
end

def remainder(a, b)
  # return the remainder of dividing a by b using the modulo operator
  a%b
end

def float_division(a, b)
  # return the result of dividing a by b as a float, rather than an integer
  a.0/b
end

def string_to_number(string)
  # return the result of converting a string into an integer
  "5".to_i #=> 5
end

def even?(number)
  # return true if the number is even (hint: use integer's even? method)
  8.even?#=>true
end

def odd?(number)
  # return true if the number is odd (hint: use integer's odd? method)
  5.odd?#=>true
end
