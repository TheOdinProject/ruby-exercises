def permutations(array)
  # Write a method that takes in an array of integers and returns an array of
  # all possible permutations of the original array. The permutations of a set
  # are the different ways the elements can be arranged.
  #
  # For simplicity, the integers are guaranteed to not repeat.
  #
  # Examples:
  # `permutations([1, 2, 3])` has six different permutations (or ways the elements can be arranged)
  #  it should return `[[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]`
  #
  # `permutations([])` returns `[[]]`, as there's only one arrangement of an empty set
  #
  # NOTE: the tests do not check for ordering, so a return of `[[1, 2], [2, 1]]`
  # will be treated the same as `[[2, 1], [1, 2]]`
end
