def create_favorite_hash(color, number)
  # return a hash with the following key/value pairs:
  # key of color (as a symbol) with value of the color argument
  # key of number (as a symbol) with the value of the number argument
  { color: color, number: number }
end

def favorite_color(favorite_list)
  # return the value of the color key
  favorite_list[:color]
end

def favorite_number(favorite_list)
  # use #fetch to return the value of the number key or 42 if the key is not found
  favorite_list.fetch(:number, 42)
end

def update_favorite_movie(favorite_list, movie)
  # Step 1: add/update the key of movie (as a symbol)
  favorite_list[:movie] = movie
  # Step 2: return the hash (because Step 1 returns the value of the movie key)
  favorite_list
end

def remove_favorite_number(favorite_list)
  # Step 1: delete the number data
  favorite_list.delete(:number)
  # Step 2: return the hash (because Step 1 returns the value of the number key)
  favorite_list
end

def favorite_categories(favorite_list)
  # return the keys of favorite_list
  favorite_list.keys
end

def favorite_items(favorite_list)
  # return the values of favorite_list
  favorite_list.values
end

def merge_favorites(original_list, additional_list)
  # merge the two hashes: original_list and additional_list
  original_list.merge(additional_list)
end
