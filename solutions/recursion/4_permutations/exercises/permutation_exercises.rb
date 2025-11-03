def permutations(array, index = 0, results = [])
  results << array.dup if index == array.length

  (index...array.length).each do |i|
    array[index], array[i] = array[i], array[index]
    permutations(array, index + 1, results)
    array[index], array[i] = array[i], array[index]
  end

  results
end
