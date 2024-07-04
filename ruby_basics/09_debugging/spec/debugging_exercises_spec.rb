require 'spec_helper'
require_relative '../exercises/debugging_exercises'

RSpec.describe 'Debugging Exercises' do
  describe 'decrement_smallest_value' do

    # remove the 'x' from the line below to unskip the test
    it 'Returns 0 after you use the stack trace to find and fix the error' do
      nested_array = [[3, 4], [1, 2]]

      smallest_value_decremented = decrement_smallest_value(nested_array)

      expect(smallest_value_decremented).to eq(0)
    end
  end

  describe 'increment_greatest_value' do

    # remove the 'x' from the line below to unskip the test
    xit 'Returns 5 after you use the stack trace to find and fix the error' do
      nested_array = [[3, 4], [1, 2]]

      greatest_value_incremented = increment_greatest_value(nested_array)

      expect(greatest_value_incremented).to eq(5)
    end
  end

  describe 'isogram' do

    # remove the 'x' from the line below to unskip the test
    xit 'Returns true after you use puts to fix the method, since Odin is an isogram' do

      expect(isogram?("Odin")).to be true
    end
  end

  describe 'yell_greeting' do

    # remove the 'x' from the line below to unskip the test
    xit 'Returns "WASSAP, BOB!" after you use pry-byebug to fix the method' do

      expect(yell_greeting("Bob")).to eq("WASSAP, BOB!")
    end
  end
end
