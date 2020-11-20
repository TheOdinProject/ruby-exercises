def favorite_hash(color, number)
  # return a hash with the following key/value pairs:
  # key of color (as a string) with value of the color argument
  # key of number (as a symbol) with the value of the number argument
  {
    'color' => color, 
    :number => number
  }
end

def favorite_color(favorite_hash)
  # return the value of the key: color (as a string)
  favorite_hash['color']
end

def favorite_number(favorite_hash)
  # return the value of the key: number (as a symbol) or 42 if the key is not found
  favorite_hash.fetch(:number, 42)
end



# Adding and new data
# Removing data
# keys and values methods
# merging