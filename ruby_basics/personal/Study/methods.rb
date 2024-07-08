# Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only siblings' names into a new array.
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

another_family = family .select { |k, v| k == :sisters || k == :brothers}.values.flatten
puts another_family

# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
cat = {name: "Whiskers"}
weight = {weight: '10 lbs'}
# The difference is merge! modifies permanently, while merge does not.
puts cat.merge(weight)
puts cat
puts weight
puts cat.merge!(weight)
puts cat
puts weight

# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
person1 = {Class: 'p1', color: 'Navy Blue', Hair: 'Black', Height: '5.11 ft', shoe_type: 'Sued'}
puts person1.keys
puts person1.values
# person1.
person1.each_key { |key| puts key }
person1.each_value { |value| puts value }
person1.each { |key, value| puts "Have's #{key} is #{value}." }

# Given the following expression, how would you access the name of the person?
person = {name: 'Bob', occupation: 'Web Developer', hobbies: 'Joggong'}

puts person[:name]
puts person[:occupation]
puts person[:hobbies]

#What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.
array1 = {name: 'Bob', occupation: 'Web Developer', hobbies: 'Joggong'}
# if array1.has_value?('Have')
#     if array1.value?('Have')
        if array1.key?('Have')
    puts true
else 
    puts false
end

# Given the following code...
# What's the difference between the two hashes that were created?
x = "Hi there!"

my_hash = {x: "some thing"}
my_hash1 = {x => "some thing"}
# The first hash that was created used a symbol x as the key. The second hash used the string value of the x variable as the key.
p my_hash
p my_hash1

# 

'kabareebe' =~ /r/ # => 5
'kabareebe' =~ /z/ # => nil

# boolean_regex.rb 
# Write a method that takes a string as an argument and returns true if the string contains the letter "a" and false otherwise. 
# The method should be case insensitive and should ignore all non-alphabetic characters.
# i = case insensitive
def has_a?(string)
    if string =~ /o/i
      puts "We have a match!"
    else
      puts "No match here."
    end
  end
  
  has_a?("basketball")
  has_a?("football")
  has_a?("hockey")
  has_a?("golf")

# boolean_regex.rb 
# Write a method that takes a string as an argument and returns true if the string contains the letter "b" and false otherwise. 
# The method should be case insensitive and should ignore all non-alphabetic characters.

def has_a_b?(string)
    if string =~ /b/i
      puts "We have a match!"
    else
      puts "No match here."
    end
  end
  has_a_b?("hockey")
  has_a_b?("footBall")
  has_a_b?("golf")
  has_a_b?("BasketBall")