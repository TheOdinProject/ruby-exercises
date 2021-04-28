# frozen_string_literal: true

def two_dimensional_array(number_of_nested_arrays, size_of_nested_arrays)
  Array.new(number_of_nested_arrays) { Array.new(size_of_nested_arrays) }
end

def add_element_to_nested_array(array, add_to_index, item_to_add)
  array[add_to_index].push(item_to_add)
  array
end

def add_another_nested_array(array, nested_array_to_add)
  array.push(nested_array_to_add)
  array
end

def delete_element_from_nested_array(array, nested_array_index, item_index)
  array[nested_array_index].delete_at(item_index)
  array
end

def delete_a_nested_array(array, index_of_nested_array)
  array.delete_at(index_of_nested_array)
  array
end

def iterate_over_nested_array(array)
  array.map do |nested_array|
    nested_array.find_all do |item|
      item.instance_of?(String)
    end
  end
end

def iterate_over_array_of_hashes(array, key)
  array.map do |hash|
    hash[key]
  end
end
