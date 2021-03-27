require 'spec_helper'
require_relative '../exercises/predicate_enumerable_exercises'

RSpec.describe 'Predicate Enumerable Exercises' do

  describe 'coffee drink exercise' do

    it 'returns true when coffee is included' do
      list = ["coffee", "water", "tea"]
      expect(coffee_drink?(list)).to be true
    end
    
    # remove the 'x' from the line below to unskip the test
    xit 'returns true when espresso is included' do
      list = ["milk", "juice", "espresso"]
      expect(coffee_drink?(list)).to be true
    end

    xit 'returns false when coffee or espress is not included' do
      list = ["tea", "water", "milk"]
      expect(coffee_drink?(list)).to be false
    end

    xit 'returns false when the list is empty' do
      list = []
      expect(coffee_drink?(list)).to be false
    end
  end

  describe 'correct guess exercise' do

    xit 'returns true when the list contains the answer' do
      list = [2, 3, 4, 5]
      answer = 5
      expect(correct_guess?(list, answer)).to be true
    end

    xit 'returns false when the list does not contain the answer' do
      list = [6, 7, 8, 9]
      answer = 5
      expect(correct_guess?(list, answer)).to be false
    end

    xit 'returns false when the list is empty' do
      list = []
      answer = 5
      expect(correct_guess?(list, answer)).to be false
    end
  end

  describe 'recent years exercise' do

    xit 'returns true when all of the years are between 2011 and 2021' do
      list = [2011, 2021, 2016]
      expect(recent_years?(list)).to be true
    end

    xit 'returns false when one year is not between 2011 and 2021' do
      list = [2018, 2001, 2014]
      expect(recent_years?(list)).to be false
    end

    xit 'returns true when the list is empty' do
      list = []
      expect(recent_years?(list)).to be true
    end
  end

  describe 'correct format exercise' do

    xit 'returns true when none of the words in the list are in upcase' do
      list = ["Pepsi", "Coke", "Dr. Pepper"]
      expect(correct_format?(list)).to be true
    end

    xit 'returns false when at least one word in the list is in upcase' do
      list = ["PEPSI", "Coke", "Dr. Pepper"]
      expect(correct_format?(list)).to be false
    end

    xit 'returns true when the list is empty' do
      list = []
      expect(correct_format?(list)).to be true
    end
  end

  describe 'valid scores exercise' do

    xit 'returns true when only one score is a 10' do
      list = { easy_to_read: 10, uses_best_practices: 8, clever: 7 }
      perfect_score = 10
      expect(valid_scores?(list, perfect_score)).to be true
    end

    xit 'returns false when more than one score is a 10' do
      list = { easy_to_read: 10, uses_best_practices: 10, clever: 9 }
      perfect_score = 10
      expect(valid_scores?(list, perfect_score)).to be false
    end

    xit 'returns false when the list is empty' do
      list = {}
      perfect_score = 10
      expect(valid_scores?(list, perfect_score)).to be false
    end
  end
end
