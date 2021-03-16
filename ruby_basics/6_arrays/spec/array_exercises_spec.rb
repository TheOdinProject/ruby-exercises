require 'spec_helper'
require_relative '../exercises/array_exercises'

RSpec.describe 'Array Exercises' do
  describe 'nil array exercise' do

    it 'returns an array containing 5 nil values' do
      expect(nil_array(5)).to eq([nil, nil, nil, nil, nil])
    end

    # remove the 'x' from the line below to unskip the test
    it 'returns an array containing 2 nil values' do
      expect(nil_array(2)).to eq([nil, nil])
    end
  end

  describe 'nested array exercise' do
    
    it 'returns a nested array with 4 empty arrays' do
      expect(nested_array(4)).to eq([[], [], [], []])
    end
    
    it 'returns a nested array with 3 empty arrays' do
      expect(nested_array(3)).to eq([[], [], []])
    end
  end

  describe 'first element exercise' do

    it 'returns the first element of an array of numbers' do
      expect(first_element([2, 4, 6, 8, 10])).to eq(2)
    end

    it 'returns the first element of an array of strings' do
      expect(first_element(['foo', 'bar'])).to eq('foo')
    end
  end

  describe 'third element exercise' do

    it 'returns the third element of an array of numbers' do
      expect(third_element([2, 4, 6, 8, 10])).to eq(6)
    end

    it 'returns nil if the array does not have a third element' do
      expect(third_element(['foo', 'bar'])).to eq(nil)
    end
  end

  describe 'last three elements exercise' do

    it 'returns an array of the last three elements' do
      expect(last_three_elements([2, 4, 6, 8, 10])).to eq([6, 8, 10])
    end

    it 'returns all of the elements when there are less than 3 elements' do
      expect(last_three_elements(['foo', 'bar'])).to eq(['foo', 'bar'])
    end
  end

  describe 'add element exercise' do

    it 'increases the length of an array by 1' do
      numbers = [1, 2, 3, 4]
      expect { add_element(numbers) }.to change { numbers.length }.by(1)
    end

    it 'increases the length of an empty array by 1' do
      data = []
      expect { add_element(data) }.to change { data.length }.by(1)
    end
  end

  describe 'remove last element exercise' do

    it 'returns the array without the last element' do
      expect(remove_last_element([1, 3, 5])).to eq([1, 3])
    end

    it 'returns an empty array when the array only has one element' do
      expect(remove_last_element(['foo'])).to eq([])
    end
  end

  describe 'remove first three elements exercise' do

    it 'returns the array without the first three elements' do
      expect(remove_first_three_elements([1, 3, 5, 7, 9])).to eq([7, 9])
    end

    it 'returns an empty array when the array has less than 3 elements' do
      expect(remove_first_three_elements(['foo', 'bar'])).to eq([])
    end
  end

  describe 'array concatenation exercise' do

    it 'returns an array adding two arrays of numbers together' do
      expect(array_concatenation([1, 3, 5], [2, 4, 6])).to eq([1, 3, 5, 2, 4, 6])
    end

    it 'returns an array adding arrays of strings and numbers together' do
      expect(array_concatenation(['a', 'b', 'c'], [1, 2, 3])).to eq(['a', 'b', 'c', 1, 2, 3])
    end
  end

  describe 'array difference exercise' do

    it 'returns an array subtracting two arrays of numbers' do
      expect(array_difference([0, 1, 1, 2, 3, 5], [0, 1, 2])).to eq([3, 5])
    end

    it 'returns an array subtracting two arrays of strings' do
      expect(array_difference(['foo', 'bar', 'baz'], ['bar','hello'])).to eq(['foo', 'baz'])
    end
  end

  describe 'empty array exercise' do

    it 'returns true when the array is empty' do
      expect(empty_array?([])).to be true
    end

    it 'returns false when the array is not empty' do
      expect(empty_array?([1, 2, 3])).to be false
    end
  end

  describe 'reverse exercise' do

    it 'returns an array containing the elements in reverse order' do
      expect(reverse([0, 1, 1, 2, 3, 5])).to eq([5, 3, 2, 1, 1, 0])
    end

    it 'returns an array containing the element when there is only one' do
      expect(reverse(['foo'])).to eq(['foo'])
    end
  end

  describe 'array length exercise' do

    it 'returns the length of the array' do
      expect(array_length([0, 1, 1, 2, 3, 5])).to eq(6)
    end

    it 'returns zero when the array is empty' do
      expect(array_length([])).to eq(0)
    end
  end

  describe 'include exercise' do

    it 'returns true when the array contains the specified value' do
      expect(include?([0, 1, 1, 2, 3, 5], 3)).to be true
    end

    it 'returns false when the array does not contain the specified value' do
      expect(include?([0, 1, 1, 2, 3, 5], 8)).to be false
    end
  end

  describe 'join exercise' do

    it 'returns a string joining an array of numbers with " + "' do
      expect(join([0, 1, 1, 2, 3, 5], ' + ')).to eq('0 + 1 + 1 + 2 + 3 + 5')
    end

    it 'returns a string joining an array of strings with " "' do
      expect(join(['foo', 'bar', 'baz'], ' ')).to eq('foo bar baz')
    end
  end
end
