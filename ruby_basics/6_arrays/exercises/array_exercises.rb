def nil_array(number)
  # return an array containing `nil` the given number of times
  new_array = []
  number.times do
    new_array.push(nil)
  end
end

def nested_array(number)
  # return an array containing nested empty arrays the given number of times
  new_array = []
  number.times do 
    new_array.push([])
end

def first_element(array)
  # return the first element of the array
  first_element = array[0]
end

def third_element(array)
  # return the third element of the array
  third_element = array[2]
end

def last_three_elements(array)
  # return the last 3 elements of the array
  last_three = array.last(3)
end

def add_element(array)
  # add an element (of any value) to the array
  array.push('element')
end

def remove_last_element(array)
  # Step 1: remove the last element from the array
  last_element = array.pop
  puts last_element
  # Step 2: return the array (because Step 1 returns the value of the element removed)
  array
end

def remove_first_three_elements(array)
  # Step 1: remove the first three elements
  array.first_three = array.first(3)
  puts array
  # Step 2: return the array (because Step 1 returns the values of the elements removed)
end

def array_concatenation(original, additional)
  # return an array adding the original and additional array together
  original.concat(additional)
end

def array_difference(original, comparison)
  # return an array of elements from the original array that are not in the comparison array
  original - comparison
end

def empty_array?(array)
  # return true if the array is empty
  if array.empty_array?
    return true
  end
end

def reverse(array)
  # return the reverse of the array
  array.reverse
end

def array_length(array)
  # return the length of the array
  array.size
end

def include?(array, value)
  # return true if the array includes the value
  if array.include?(value)
    return true
end

def join(array, separator)
  # return the result of joining the array with the separator
  array.concat(separator)
end
