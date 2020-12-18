def current_inventory(list)
  list.each { |key, value| puts "#{key}: #{value}" } 
end

def index_method(array)
  array.each_with_index do |item, index|
    puts item if index % 3 == 0
  end
end

def map_method(array)
  array.map do |item|
    item.downcase.reverse.capitalize
  end
end

def low_inventory(list)
  list.select { |key, value| value < 4 } 
end
