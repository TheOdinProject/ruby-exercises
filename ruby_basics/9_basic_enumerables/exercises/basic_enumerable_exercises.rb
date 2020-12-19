def display_current_inventory(list)
  list.each { |key, value| puts "#{key}, quantity: #{value}" } 
end

def display_guess_order(array)
  array.each_with_index do |item, index|
    puts "Guess ##{index + 1} is #{item}"
  end
end

def convert_to_positive(array)
  array.map do |item|
    item.abs
  end
end

def low_inventory(list)
  list.select { |key, value| value < 4 } 
end

def longest_word(word_list)
  word_list.reduce do |memo, word|
    if memo.length > word.length
      memo
    else
      word
    end
  end
end

def longest_word_default(word_list, memo = '')
  word_list.reduce(memo) do |memo, word|
    if memo.length > word.length
      memo
    else
      word
    end
  end
end

def longest_word_comparison(word_list, memo)
  word_list.reduce(memo) do |memo, word|
    if memo.length > word.length
      memo
    else
      word
    end
  end
end

def word_length_list(word_list)
  word_list.reduce({}) do |memo, word|
    memo[word] = word.length
    memo
  end
end
