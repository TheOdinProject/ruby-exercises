def concatenate_example(string)
  # use concatenation to format the result to be "Classic <string>"
   classic = "Classic"
   str = "string" 
    word = classic + " " + str
  puts word
  word = classic.concat(" " + str)
  puts word
  word = "Classic" << " " << "string"
  puts word
end
concatenate_example("string")

def concatenate(string)
  # use concatenation to format the result to be "Hello <string>!"
  greeting = "Hello"
  str = "string"
  sayHi = greeting << " " << str << "!"
  puts sayHi
end
concatenate("string")

def substrings(word)
  # return the first 4 letters from the word using substrings
  word = "substring"
  puts word[0, 4]
end
substrings("substring")

def capitalize(word)
  # capitalize the first letter of the word
  word = "capitalize"
  puts word.capitalize
end
capitalize("capitalize")

def uppercase(string)
  # uppercase all letters in the string
  string = 'uppercase'
  puts string.upcase
end
uppercase("uppercase")

def downcase(string)
  # downcase all letters in the string
  string = 'DOWNCASE'
  puts string.downcase
end
downcase("DOWNCASE")

def empty_string(string)
  # return true if the string is empty
  string = ''
  puts string.empty?
end
empty_string("")

def string_length(string)
  # return the length of the string
  string = 'string'
  puts string.length
end
string_length("string")

def reverse(string)
  # return the same string, with all of its characters reversed
  string = 'strings'
  puts string.reverse
end
reverse(" I have a string  !")

def space_remover(string)
  # remove all the spaces in the string using gsub
  str = 'I have a string'
  str1 = 'Have Samuel Kababreebe'
  puts str1.gsub(" ", "")
  # puts str.gsub(/\s+/, "")
  puts str.gsub(" ", "")
end
space_remover('string')