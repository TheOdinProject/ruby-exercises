require 'spec_helper'
require_relative '../exercises/debugging_exercises'

RSpec.describe 'Debugging Exercises' do
  describe 'decrement_smallest_value' do

    # remove the 'x' from the line below to unskip the test
    it 'returns 0 after finding the smallest value of 1, and decrementing by 1' do
      nested_array = [[3, 4], [1, 2]]

      smallest_value_decremented = decrement_smallest_value(nested_array)

      expect(smallest_value_decremented).to eq(0)
    end
  end
end