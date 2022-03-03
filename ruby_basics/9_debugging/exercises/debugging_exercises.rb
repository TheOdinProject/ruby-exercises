# First, we're going to practice reading the Stack Trace
# Don't look at this method prior to running the test
# Run rspec, let the test fail, and look at the stack trace
# Try to see if you can work your way from the last line, the bottom of the stack
# To the top, the first line, where the error occured, and ONLY THEN fix the error

def decrement_smallest_value(nested_array)
  smallest_value = nested_array.flatten.max
  nested_array.each do |array|
    array.each do |current_value|
      if smallest_value > current_value
        smallest_value = current_valu
      end
    end
  end
  smallest_value -= 1
end

# use the stack trace to debug the following method
# Don't look at this method prior to running the test
# Run rspec, let the test fail, and go through the stack trace again
def increment_greatest_value(nested_array)
  greatest_value = nested_array.flatten.min
  nested_array.each do |array|
    array.each do |current_value|
      if greatest_value < nil
        greatest_value = current_value
      end
    end
  end
  greatest_value += 1
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