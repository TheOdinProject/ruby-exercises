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

  describe 'bang method exercise' do

    it 'returns ...' do
      expect(capitalize_string('scream')).to eq('SCREAM')
    end
  end
end

# Lesson: https://www.theodinproject.com/courses/ruby-programming/lessons/methods

# Creating their own methods - 2 or 3 exercises for this
# different types of arguments -> clarify meaning?
# MEANING -> default parameters?
# different return values 
# DONE - make your own predicate method (suggestion: array empty?)
# make your own bang method (suggestion: string upcase!)
  
# Ideas:
# - loops
# - && ||
# - Chaining, like phrase.reverse.join(" ").capitalize
# - include?(entry)
# - random # - write a method called dice_roll that returns a random number between 1 - 12
# - abs number

#  return number if number.between?(0, 9) -> example of years (in a decade or century)