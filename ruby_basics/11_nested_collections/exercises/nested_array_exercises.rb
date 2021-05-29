def blank_seating_chart(number_of_rows, seats_per_row)
  # return a 2d array to represent a seating chart that contains
  # number_of_rows nested arrays, each with seats_per_row entries of nil to
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
  # take a chart (2d array)  and add seat_to_add to the end of the row that is
  # at add_to_row index of the chart, then return the chart
end

def add_another_row(chart, row_to_add)
  # take a chart and add row_to_add to the end of the chart,
  # then return the chart.
end

def delete_seat_from_row(chart, row_index, seat_index)
  # take a chart and delete the seat at seat_index of the row at row_index of
  # the chart, then return the chart
end

def delete_row_from_chart(chart, row_index)
  # take a chart and delete the row at row_index of the chart,
  # then return the chart
end

def count_empty_seats(chart)
  # take a chart and return the number of empty (nil) seats in it

  # NOTE: `chart` should **not** be mutated
end

def iterate_over_array_of_hashes(array_of_hash_objects, key)
  # take an array_of_hash_objects and a key, return an array containing all the
  # values for key in each hash
end
