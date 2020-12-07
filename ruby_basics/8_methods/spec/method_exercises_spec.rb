require 'spec_helper'
require_relative '../exercises/method_exercises'

RSpec.describe 'Method Exercises' do
  describe 'chaining methods exercise' do

    it 'returns an sorted array removing one duplicate' do
      games = ['Chess', 'Scrabble', 'Othello', 'Chess']
      expect(alphabetical_list(games)).to eq(['Chess', 'Othello', 'Scrabble'])
    end
    
    # remove the 'x' from the line below to unskip the test
    it 'returns an sorted array removing multiple duplicates' do
      games = ['Tennis', 'Baseball', 'Baseball', 'Soccer', 'Tennis', 'Tennis']
      expect(alphabetical_list(games)).to eq(['Baseball', 'Soccer', 'Tennis'])
    end
  end

  describe 'divisible by four exercise' do

    it 'returns true when the year is divisible by 4' do
      expect(divisible_by_four?(2024)).to be true
    end

    it 'returns false when the year is not divisible by 4' do
      expect(divisible_by_four?(1999)).to be false
    end
  end

  describe 'year exercise' do

    it 'returns true when the year is between 2001 - 2100' do
      expect(twenty_first_century?(2024)).to be true
    end

    it 'returns true when the year is 2001' do
      expect(twenty_first_century?(2001)).to be true
    end

    it 'returns false when the year is not between 2001 - 2100' do
      expect(twenty_first_century?(1999)).to be false
    end
  end

  describe 'lucky exercise' do

    it 'returns a string with the provided parameter' do
      expect(lucky_number(3)).to eq("Today's lucky number is 3")
    end

    it 'returns a string with the default parameter' do
      expect(lucky_number).to eq("Today's lucky number is 7")
    end
  end

  describe 'explicit return exercise' do

    it 'returns 65' do
      expect(character_code('A')).to eq(65)
    end

    it 'returns invalid argument' do
      expect(character_code('word')).to eq('Invalid argument')
    end
  end
end

# Lesson: https://www.theodinproject.com/courses/ruby-programming/lessons/methods

# Creating their own methods - 2 or 3 exercises for this
# different types of arguments -> clarify meaning?
# DONE - MEANING -> default parameters?
# different return values -> clarify meaning?
# MEANING -> return vs. puts
# DONE - make your own predicate method (suggestion: array empty?)
# SKIP - make your own bang method (suggestion: string upcase!)
# skip because using a bang method alters the object, but does not look any different than just a return value.
  
# Ideas:
# - loops
# - && ||
# - Chaining, like phrase.reverse.join(" ").capitalize
# - include?(entry)
# - random # - write a method called dice_roll that returns a random number between 1 - 12
# - abs number
# - need long form of if/else
# def even_odd(number)
#   if number % 2 == 0
#     "That is an even number."
#   else
#     "That is an odd number."
#   end
# end