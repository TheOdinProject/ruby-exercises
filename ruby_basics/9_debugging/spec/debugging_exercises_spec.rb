require 'spec_helper'
require_relative '../exercises/debugging_exercises'

RSpec.describe 'Debugging Exercises' do
  describe 'Stack Trace Exercises' do

    # remove the 'x' from the line below to unskip the test
    it 'returns the smallest value out of a nested array' do
      nested_array = [[3, 4], [1, 2]]

      smallest_value = find_smallest_value(nested_array)

      expect(smallest_value).to eq(1)
    end
  end
end