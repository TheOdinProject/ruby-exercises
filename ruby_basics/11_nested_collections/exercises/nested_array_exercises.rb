def blank_seating_chart(number_of_rows, seats_per_row)
  # return a 2d array to represent a seating chart that contains 
  # `number_of_rows` nested arrays, each with `seats_per_row` entries of nil to
  # represent that each seat is empty.

  # Example: blank_seating_chart(2, 3) should return:
  # [
  #   [nil, nil, nil],
  #   [nil, nil, nil]
  # ]

  # NOTE: if one of the nested arrays is changed, the others should **not**
  # change with it
end

def add_seat_to_row(chart, add_to_row, seat_to_add)
  # take a seating chart array (`chart`) and add `seat_to_add` to the end of the nested
  # array that is at the `add_to_row` index of `grid`, then return the array

  # Example: add_seat_to_row([[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']], 1, 'Jack')
  # should return:
  # [
  #   [nil, 'Bob', 'Joe'],
  #   [nil, nil, Bill, 'Jack']
  # ]
end

def add_another_row(chart, row)
  # take a seating chart array (`chart`), and add `row` to the end of `chart`,
  # then return the array.

  # Example:
  # add_another_row([[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']], ['Bo', nil, 'Kim'])
  # should return:
  # [
  #   [nil, 'Bob', 'Joe'],
  #   [nil, nil, 'Bill'],
  #   ['Bo', nil, 'Kim']
  # ]
end

def delete_seat_from_row(chart, row_index, seat_index)
  # take a two dimensional array (`chart`), and delete the seat at "seat_index"
  # of the row at `row_index` of `chart`, then return `chart`

  # Example:
  # delete_seat_from_row([[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']], 0, 1)
  # should return:
  # [
  #   [nil, 'Joe'],
  #   [nil, nil, 'Bill']
  # ]
end

def delete_row_from_chart(chart, row_index)
  # take a two dimensional array (`chart`), and delete the row at
  # `row_index` in `chart`, then return the chart

  # Example:
  # delete_row_from_chart([[nil, 'Bob'], ['Joe', nil], [nil, 'Bill']], 1)
  # should return:
  # [
  #   [nil, 'Bob'],
  #   [nil, 'Bill']
  # ]
end

def iterate_over_chart(chart)
  # take a two dimensional array (`chart`), and return the number of empty (nil)
  # seats in it

  # Example: iterate_over_chart([[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']])
  # should return the number 3

  # NOTE: `chart` should **not** be mutated
end

def iterate_over_array_of_hashes(grid, key)
  # take an array containing hash objects (`grid`) and a symbol as a "key",
  # return an array containing all of the values for "key" in each hash
end
