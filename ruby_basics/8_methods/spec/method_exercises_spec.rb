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

    it 'returns number for uppercase letter' do
      expect(ascii_code('A')).to eq(65)
    end

    it 'returns number for lowercase letter' do
      expect(ascii_code('z')).to eq(122)
    end

    it 'returns input error when there is more than one character' do
      expect(ascii_code('word')).to eq('Input Error')
    end
  end

  describe 'console output exercise' do

    it 'returns the cat pun' do
      expect { pet_pun('cat') }.to output("Cats are purr-fect!\n").to_stdout
    end

    it 'returns the dog pun' do
      expect { pet_pun('dog') }.to output("Dogs are paw-some!\n").to_stdout
    end

    it 'returns the default pet pun' do
      expect { pet_pun('rabbits') }.to output("I think rabbits have pet-tential!\n").to_stdout
    end
  end
end

# Lesson: https://www.theodinproject.com/courses/ruby-programming/lessons/methods

# 1. Creating their own methods - 2 or 3 exercises for this
# DONE - #alphabetical_list (using chaining)
# **** - method using if/else statement
# **** - 
# 2. different types of arguments (normal and default parameters)
# DONE - #lucky_number
# 3. different return values (explicit and implicit returns)
# DONE - #ascii_code  (explicit and implicit returns)
# DONE - method using puts instead of return
# 4. make your own predicate method (suggestion: array empty?)
# DONE ? #divisible_by_four? 
# DONE ? #twenty_first_century? 
# 5. make your own bang method (suggestion: string upcase!)
# SKIP - because using a bang method alters the object, but does not look any different than just a return value.
  
# IDEAS:
# - && ||
# - include?(entry)
# - abs number
# - array intersection, sample
# - interger#chr 
# - hash?
# - case statement - with downcase to match