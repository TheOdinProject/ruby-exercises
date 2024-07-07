# Using EACH method to iterate over a hash
# The EACH method is used to iterate over a hash. It takes a block of code and applies it to each key/value pair in the hash. The key is represented by the first block variable and the value is represented by the second block variable. Here's an example:
person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

school = {Class: 'p1', color: 'Navy Blue', Hair: 'Black', Height: '5.11 ft', shoe_type: 'Sued'}

school.each do |key, value|
  # school.each { |values| puts values}
  puts "Have's #{key} is #{value}."
  
end

# Using Optional Parameters
# Optional parameters are parameters that have a default value if no argument is passed. Here's an example:
def greeting(name, options = {})
if options.empty?
  puts "Hi, my name is #{name}"
else
  puts "Hi, my name is #{name}, I'm #{options[:age]}" +
       " years old and I live in #{options[:city]}."
end
end
greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})

name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

  new_family = family .select { |k,v| k == :sisters || k == :brothers}
  puts new_family

  # new_family = family .select { |k,v| k == :sisters || k == :brothers}.values.flatten
  # puts new_family

def create_favorite_hash(color, number)
  # return a hash with the following key/value pairs:
  # key of color (as a symbol) with value of the color argument
  # key of number (as a symbol) with the value of the number argument
  favorite_list = {color: color, number: number}
end

def favorite_color(favorite_list)
  # return the value of the color key
  favorite_color = favorite_list[:color]
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
