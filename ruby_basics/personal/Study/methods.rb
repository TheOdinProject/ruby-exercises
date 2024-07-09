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
























































































