# use the stack trace to debug the following method
def smallest_value(nested_array)
  nested_array.reduce { |smallest_value, current_array|
    smallest_value = current_array.min if smallest_value > current_array.min 
  }
end

# use the stack trace to debug the following method
def greatest_value(nested_hash)
  nested_hash.each do |hash|
end

def array_length(array)
  # use puts to debug this method, so that it
  # returns the length of the array
end

def include?(array, value)
  # use puts to debug this method, so that it
  # returns true if the array includes the value
end

def join(array, separator)
  # use puts to debug this method, so that it
  # returns the result of joining the array with the separator
end

def favorite_categories(favorite_list)
  # use pry to debug this method, so that it
  # returns the keys of favorite_list
end

def favorite_items(favorite_list)
  # use pry to debug this method, so that it
  # returns the values of favorite_list
end

def favorite_number(favorite_list)
  # use pry to debug this method, so that it
  # returns the value of the number key or 42 if the key is not found
end