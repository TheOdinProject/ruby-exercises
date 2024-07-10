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

# Using MatchData to extract data
# Write a method that takes a string as an argument and returns the first word in the string that matches a pattern.
/e/.match("The quick brown fox jumps over the lazy dog.")
# => #<MatchData "e">
# The match method returns a MatchData object that contains information about the match.
# The MatchData object can be used to extract the matched substring.

# boolean_matchdata.rb
# You can use a MatchData object to act as a boolean value in your program by checking if the object is nil.

def has_a_b?(string)
    if /b/.match(string)
      puts "We have a match!"
    else
      puts "No match here."
    end
  end
   has_a_b?("hockey")
  has_a_b?("golf")
  has_a_b?("basketball")
  has_a_b?("football")
 
# Ruby Standard Classes
# The Ruby Standard Library includes a collection of classes that provide useful functionality for your programs.
Math.sqrt(121) # => 11.0
Math::PI # => 3.141592653589793
Math.cos(0) # => 1.0
Math.hypot(3, 4) # => 5.0
Math.log(2, 10) # => 0.3010299956639812
Time.new(2008, 7, 4) # => 2008-07-04 00:00:00 -0400 

# VARIABLES AS POINTERS
# Ruby variables are references to objects. When you assign a variable to an object, you are actually assigning a reference to that object.
# When you assign a variable to another variable, you are copying the reference, not the object itself.
# We'll take a deeper look at variables in this section, and specifically how they act as pointers to an address space in memory. That is, the variable doesn't actually contain the value. Instead, it contains a pointer to a specific area in memory that contains the value. This is a concept that confuses a lot of new programmers, and it's also one of the most important concepts to understand. 
a = "hi there"
b = a
a = "not here" 
puts a # => "not here"
puts b # => "hi there"

a = "hi there"
b = a
a << ", Bob"
#Question 1: What is the value of a and b?
x = 'a'
y = x
y = 'b'
# puts x = 'a'
# puts y = 'b'
puts "x = #{x}, y = #{y}" 

#Question 2:
x = 'a'
y = x
x = y.capitalize
# puts x = 'A'
# puts y = 'a'
puts "x = #{x}, y = #{y}"

# Question 3:
x = 'a'
y = x
x = y.replace('b')
# x => 'b'
# y => 'b'
puts "x = #{x}, y = #{y}"

# Question 4:
x = 'a'
y = x
z = y
y = 2
# x => 'a'
# y => 2
# z => 'a'
puts "x = #{x}, y = #{y}, z = #{z}"

# Question 5:
x = 'a'
y = 'b'
z = [x, y]
y = 2
# x => 'a'
# y => 2
# z => ['a', 'b']
puts "x = #{x}, y = #{y}, z = #{z}"

# Question 6:
x = y
y = 'a'
z = 'b'
y = z
# x => 'a'
# y => 'b'
# z => 'b'
puts "x = #{x}, y = #{y}, z = #{z}"

# BLOCKS AND PROCS
# Blocks are a way to group code together. They are similar to methods, but they don't have a name. You can think of them as anonymous methods.

# passing_block.rb

def take_block(&block)
    block.call
  end
  
  take_block do
    puts "Block being called in the method!"
  end

# Making it more complex by passing a block to a method
def take_block(number, &block)
    block.call(number)
  end

    number = 42
    take_block(number) do |num|
        puts "Block being called in the method! #{num}"
end

# PROCS
# Procs are blocks that are wrapped in a proc object. You can think of a proc as a saved block. Procs can be used in methods just like blocks. The big difference between procs and blocks is that procs can be called over and over without rewriting them.

# proc_example.rb

talk = Proc.new do
    puts "I am talking."
  end
  
  talk.call

# Procs can also take arguments.
talk = Proc.new do |name|
    puts "I am talking to #{name}"
  end

    talk.call "Bob"

# Procs can be passed into methods. Let's take our previous passing_block.rb code and modify the method to take a proc instead. We'll add some more functionality too.
def take_proc(proc)
    [1, 2, 3, 4, 5].each do |number|
      proc.call number
    end
  end
  # We'll create a proc that takes a |number| parameter and prints out the number.
  
    proc = Proc.new do |number|
        puts "#{number}. Proc being called in the method!"
    end

take_proc(proc)

# Using procs gives us the added flexibility to be able to reuse blocks in more than one place without having to type them out every time.

# EXCEPTIONAL HANDLING
# Exception handling is a specific process that deals with errors in a manageable and predictable way. The main thing we want to make you aware of at this point, is how exception handling works and what it looks like. The reserved word rescue will show up a lot in your Ruby career so it's better to know what it is sooner than later.

# When your programs are interacting with the real world, there is a large amount of unpredictability. If a user enters bad information or a file-manipulating process gets corrupted, your program needs to know what to do when it runs into these exceptional conditions.

names = ['Treasure', 'Samuel', nil, 'Ramathan', 'Don', 'Kikazi']

names.each do |name|
    begin
        puts "#{name}'s name has this #{name.length} letters in it. "
    rescue
        puts "Something went wrong!"
    end
end

# Using RESCUE to reserve word-in-line
zero = 0
puts "Before each call"
zero.each {|element| puts element} rescue puts"Can't do that!"
    puts "After the call"
# If we give this same code the proper variable, our rescue block never gets executed.
zero = [1,2,3,4,5,6]
puts "Before each call"
zero.each {|element| puts element} rescue puts"Can't do that!"
    puts "After the call"

# We can also rescue pre-existing errors when we are writing our code.
# Using RESCUE PRE-EXISTING ERRORS with a divide method
def divide(number, divisor)
    begin
        answer = number / divisor
    rescue ZeroDivisionError => e
        e.message
    end
end
puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)

# EXCEPTION & STACK TRACES
# Example 
# '1' + 1
# TypeError:
# no implicit conversion of Integer into String

def greet(person)
    puts "Hello, " + person
end
greet("John")
# greet(1) # => TypeError: no implicit conversion of Integer into String

# Another example
def space_out_letters(person)
    return person.split("").join(" ")
end
# puts space_out_letters("John") # => "J o h n"
# puts space_out_letters("1") # => "1"

def greet(person)
    return "H e l l o, " + space_out_letters(person)
end
# puts greet("John") # => "H e l l o, J o h n"
# puts greet("1") # => "H e l l o, 1"

def decorate_greeting(person)
    puts "" + greet(person) + ""
end

decorate_greeting("John")
# decorate_greeting(1) # Causes an ERROR

# METHOD DEFINITION ORDER
def top
    bottom
end

def bottom
    puts "Reached the bottom"
end

top

# EXERCISE
# Question 1
# Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
def has_lab?(string)
    # if /lab/ =~ string
    if string =~ /lab/i
        puts string
    else 
        puts "No Match found!"
    end
end

has_lab?('laboratory')
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")

# Question 2: What will the following program print to the screen? What will it return?
def execute(&block)
    block
end
execute {puts "Hello from inside the execute method!"}
# The program will print nothing to the screen because the block is never activated with the .call method. The method returns a Proc object.

# Question 3: What is exception handling and what problem does it solve?
# Exception handling is a specific process that deals with errors in a manageable and predictable way. It solves the problem of unpredictability in programs that interact with the real world. If a user enters bad information or a file-manipulating process gets corrupted, your program needs to know what to do when it runs into these exceptional conditions.

# Question 4: Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
    block.call
end
block = execute() {puts "Hello from inside the execute method!"}

# Question 5: Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Single line version
arr.each {|number| puts number}
# Multiple-line version
arr.each do |number|
    puts number
end

# Question 6: Same as above, but only print out values greater than 5.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each {|number| puts number if number > 5}

arr.each do |number|
    puts number if number > 5
end

arr.each do |number|
    if number > 5
        puts number
    end
end

# Question 7: Use the select method to extract all odd numbers into a new array.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_arr = arr.select do |number|
    # number % 2 != 0
    number.odd?
end

puts new_arr

# Question 8: Append 11 to the end of the original array. Prepend 0 to the beginning.
arr =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.push(11)
# arr << 11
arr.unshift(0)
puts arr

# Question 9: Get rid of 11. And append a 3.
arr.pop
arr.push (3)
puts arr

# Question 10: Get rid of duplicates without specifically removing any one value.
arr.uniq!
puts arr

# Question 11: What's the major difference between an Array and a Hash?

# An array is an ordered list of elements, while a hash is a collection of key-value pairs.

# Question 12: Create a hash using both Ruby syntax styles.
person = {name: 'Bob', occupation: 'Web Developer', hobbies: 'Joggong'}
person1 = {:name => 'Bob', :occupation => 'Web Developer', :hobbies => 'Joggong'} 

# Question 13: Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
# 2. Add to this hash the key:value pair `{e:5}`
# 3. Remove all key:value pairs whose value is less than 3.5
h = {a:1, b:2, c:3, d:4}
h[:b]
h[:e] = 5
h[:f] = 6
h.delete_if { |k, v| v < 3.5}
puts h
h.delete_if do |k, v|
    v < 3.5
end

puts h

# Question 14: Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

# While Working with Hashes, Always remember that you can access the value of a key in a hash by using the hash[key] syntax. You can also set the value of a key in a hash by using the hash[key] = value syntax.
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]

contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts
# Output: # Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

# Question 15: Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if do |word| 
    word.start_with?("w")
end
puts arr

arr.delete_if { |str| str.start_with?("w", "s") }
puts arr

# Question 16: Take the following array and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.
array = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
# When you use the map method on an array, it returns a new array based on the block's return value. In this case, we are splitting each string into an array of words.
# The flatten method then takes this array of arrays and turns it into a one-dimensional array.
# The split method is used to split a string into an array of substrings based on a delimiter. In this case, the delimiter is a space.
array = array.map { |pairs| pairs.split }
array = array.flatten
puts array

# Question 17: What will the following program output?
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
# For these Hashes, they will be the same, which is a different case with the Arrays that operate on the index based condition

# Questiion 18: Challenge: In exercise 14, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 14, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}













