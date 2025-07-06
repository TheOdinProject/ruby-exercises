def total_integers(array)
  array.sum do |element|
    case element
    when Integer
      1
    when Array
      total_integers(element)
    else
      0
    end
  end
end
