# frozen_string_literal: true

def two_dimensional_array(number_of_nested_arrays, size_of_nested_arrays)
  # return an array that contains "number_of_nested_arrays" arrays, each
  # containing `nil` the "size_of_nested_arrays" times

  # NOTE: if one of the nested arrays is changed, the others should **not**
  # change with it
end

def add_element_to_nested_array(array, add_to_index, item_to_add)
  # take a two dimensional array ("array"), and add "item_to_add" to the nested
  # array that is at the "add_to_index" index of "array", then return the array
end

def add_another_nested_array(array, nested_array_to_add)
  # take a two dimensional array ("array"), and add "nested_array_to_add" to
  # the end of "array", then return the array
end

def delete_element_from_nested_array(array, nested_array_index, item_index)
  # take a two dimensional array ("array"), and delete the item in "item_index"
  # of the nested array at "nested_array_index" of "array", then return the
  # array
end

def delete_a_nested_array(array, index_of_nested_array)
  # take a two dimensional array ("array"), and delete the nested array at
  # "index_of_nested_array" in "array", then return the array
end

def iterate_over_nested_array(array)
  # take a two dimensional array ("array"), and return a *new* two dimensional
  # array with the same number of nested arrays as "array" but each only
  # containing the strings from the equivalent nested array in "array" in the
  # same order that they appeared in "array"

  # Example: if given [['foo', 2], ['bar', nil 'baz']] this method should return
  # [['foo'], ['bar', 'baz']]

  # NOTE: "array" should **not** be mutated
end

def iterate_over_array_of_hashes(array, key)
  # take an array containing hash objects ("array") and a symbol as a "key",
  # return an array containing all of the values for "key" in each hash
end
