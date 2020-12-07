# Now it your turn to write the entire method to pass tests one at a time

# method name: #alphabetical_list
# parameter: games (an array)
# return value: games with the two following array methods chained together
# sort (orders the items alphabetically)
# uniq (removes any duplicates)
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

# method name:
# parameter: 
# return value: 
def character_code(character)
  unless character.length == 1
    return 'Invalid argument'
  end

  character.ord
end

# method name:
# parameter: 
# return value: 
