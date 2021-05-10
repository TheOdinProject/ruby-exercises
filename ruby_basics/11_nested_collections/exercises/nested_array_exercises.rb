def blank_grid(number_of_rows, number_of_columns)
  # return a 2d array that contains `number_of_rows` nested arrays, each with
  # `number_of_columns` entries of nil.

  # Example: blank_grid(2, 3) should return
  # [
  #   [nil, nil, nil],
  #   [nil, nil, nil]
  # ]

  # NOTE: if one of the nested arrays is changed, the others should **not**
  # change with it
end

def add_cell_to_row(grid, add_to_row, item_to_add)
  # take a two dimensional array (`grid`) and add `item_to_add` to the nested
  # array that is at the `add_to_row` index of `grid`, then return the array

  # Example: add_cell_to_row([[1, 2, 3], [4, 5, 6]], 1, 7) should return
  # [
  #   [1, 2, 3],
  #   [4, 5, 6, 7]
  # ]
end

def add_another_row(grid, row)
  # take a two dimensional array (`grid`), and add `row` to the end of `grid`,
  # then return the array.

  # Example: add_another_row([[1, 2, 3], [4, 5, 6]], [7, 8, 9]) should return
  # [
  #   [1, 2, 3],
  #   [4, 5, 6],
  #   [7, 8, 9]
  # ]
end

def delete_cell_from_grid(grid, row_index, item_index)
  # take a two dimensional array (`grid`), and delete the item in "item_index"
  # of the nested array at `row_index` of `grid`, then return the array

  # Example: delete_element_from_nested_array([[1, 2, 3], [4, 5, 6]], 0, 1)
  # should return
  # [
  #   [1, 3],
  #   [4, 5, 6]
  # ]
end

def delete_row_from_grid(grid, row_index)
  # take a two dimensional array (`grid`), and delete the row at
  # `row_index` in `grid`, then return the array

  # Example: delete_a_nested_array([[1, 2], [3, 4], [5, 6]], 1) should return
  # [
  #   [1, 2],
  #   [5, 6]
  # ]
end

def iterate_over_grid(grid)
  # take a two dimensional array (`grid`), and return the number of times a 7
  # appears in it

  # Example: iterate_over_grid([[7, 5, 7], [2, 7, 9]]) should return
  # the number 3

  # NOTE: `grid` should **not** be mutated
end

def iterate_over_array_of_hashes(grid, key)
  # take an array containing hash objects (`grid`) and a symbol as a "key",
  # return an array containing all of the values for "key" in each hash
end
