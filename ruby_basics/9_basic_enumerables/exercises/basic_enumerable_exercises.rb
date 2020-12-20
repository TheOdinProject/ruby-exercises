def display_current_inventory(list)
  list.each { |key, value| puts "#{key}, quantity: #{value}" } 
end

def display_guess_order(array)
  array.each_with_index do |item, index|
    puts "Guess ##{index + 1} is #{item}"
  end
end

def find_absolute_values(array)
  array.map do |item|
    item.abs
  end
end

def find_low_inventory(list)
  list.select { |key, value| value < 4 } 
end

def find_longest_word(word_list)
  word_list.reduce do |memo, word|
    if memo.length > word.length
      memo
    else
      word
    end
  end
end

def find_longer_words(word_list, base_word)
  word_list.reduce([]) do |memo, word|
    memo << word if word.length > base_word.length
    memo
  end
end

def find_word_lengths(word_list)
  word_list.reduce({}) do |memo, word|
    memo[word] = word.length
    memo
  end
end
