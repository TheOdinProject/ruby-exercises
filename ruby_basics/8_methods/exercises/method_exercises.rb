# Now it your turn to write the entire method to pass tests one at a time

# method name: #alphabetical_list
# parameter: games (an array)
# return value: games, alphabetically sorted and duplicates removed
# hint: chain Array#sort and Array#uniq together
def alphabetical_list(games)
  games.sort.uniq
end

# method name: #divisible_by_four?
# parameter: year (an integer)
# return value: true if the year is evenly divided by 4, otherwise return false
def divisible_by_four?(year)
  year % 4 == 0
end

# method name: #twenty_first_century?
# parameter: year (an integer)
# return value: true if the year is between 2001 - 2100, otherwise return false
def twenty_first_century?(year)
  year.between?(2001, 2100)
end

# method name: #lucky_number
# parameter: number with default value of 7
# return value: a string "Today's lucky number is <number>"
def lucky_number(number = 7)
  "Today's lucky number is #{number}"
end

# method name: #ascii_code
# parameter: character (a string)
# return value: the character's ordinal number
# explicit return value: 'Input Error' if character is more than one character
# hint: use String#ord
def ascii_code(character)
  unless character.length == 1
    return 'Input Error'
  end

  character.ord
end

# method name: #pet_pun
# parameter: animal (a string)
# return value: nil
# console output: if animal is 'cat', 'Cats are purr-fect!' (perfect)
# console output: if animal is 'dog', 'Dogs are paw-some!' (awesome)
# console output: otherwise, "I think <animal>s have pet-tential!" (potential)
def pet_pun(animal)
  if animal == 'cat'
    puts 'Cats are purr-fect!'
  elsif animal == 'dog'
    puts 'Dogs are paw-some!'
  else
    puts "I think #{animal}s have pet-tential!"
  end
end

# method name: #ascii_translator
# parameter: number
# return value: the number's ASCII character (https://www.ascii-code.com/)
# hint: use Integer#chr
def ascii_translator(number)
  number.chr
end

# method name: #sports_in_common
# parameters: my_sports and your_sports (both arrays)
# return value: an array containg elements in both...
# tip: use Array#intersection 

def sports_in_common(my_sports, your_sports)
  my_sports.intersection(your_sports)
end
