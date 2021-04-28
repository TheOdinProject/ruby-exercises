require 'spec_helper'
require_relative '../exercises/nested_array_exercises'

RSpec.describe 'Nested Array Exercises' do
  describe '2D array creation exercise' do
    it 'returns an array containing four arrays, each containing nil two times' do
      expected_output = [[nil, nil], [nil, nil], [nil, nil], [nil, nil]]
      expect(two_dimensional_array(4, 2)).to eq(expected_output)
    end

    it 'returns an array containing 2 arrays, each containing nil 4 times' do
      expected_output = [[nil, nil, nil, nil], [nil, nil, nil, nil]]
      expect(two_dimensional_array(2, 4)).to eq(expected_output)
    end

    context 'when one of the nested arrays is changed' do
      it "doesn't change the other nested arrays" do
        my_array = two_dimensional_array(4, 2)
        my_array[2][1] = true

        expect(my_array).to eq([[nil, nil], [nil, nil], [nil, true], [nil, nil]])
      end
    end
  end

  describe 'add element to nested array exercise' do
    let(:array) { [[nil, nil], [nil, nil]] }

    it 'returns the array with true added to the end of the second nested array' do
      expected_output = [[nil, nil], [nil, nil, true]]
      expect(add_element_to_nested_array(array, 1, true)).to eq(expected_output)
    end

    it 'returns the array with 13 added to the end of the first nested array' do
      expected_output = [[nil, nil, 13], [nil, nil]]
      expect(add_element_to_nested_array(array, 0, 13)).to eq(expected_output)
    end
  end

  describe 'add another nested array exercise' do
    let(:array) { [[nil, nil], [nil, nil]] }

    it 'returns the array with [42] added as a third nested array' do
      expected_output = [[nil, nil], [nil, nil], [42]]
      expect(add_another_nested_array(array, [42])).to eq(expected_output)
    end

    it 'returns the array with [true] added as a third nested array' do
      expected_output = [[nil, nil], [nil, nil], [true]]
      expect(add_another_nested_array(array, [true])).to eq(expected_output)
    end
  end

  describe 'delete element from nested array exercise' do
    let(:array) { [[true, false], [true, false]] }

    it 'returns the array with the first item in the second nested array deleted' do
      expected_output = [[true, false], [false]]
      expect(delete_element_from_nested_array(array, 1, 0)).to eq(expected_output)
    end

    it 'returns the array with the second item in the first nested array deleted' do
      expected_output = [[true], [true, false]]
      expect(delete_element_from_nested_array(array, 0, 1)).to eq(expected_output)
    end
  end

  describe 'delete nested array exercise' do
    let(:array) { [[true, true], [false, false]] }

    it 'returns the array with the second nested array deleted' do
      expected_output = [[true, true]]
      expect(delete_a_nested_array(array, 1)).to eq(expected_output)
    end

    it 'returns the array with the first nested array deleted' do
      expected_output = [[false, false]]
      expect(delete_a_nested_array(array, 0)).to eq(expected_output)
    end
  end

  describe 'iterate over nested array exercise' do
    let(:array) { [[true, 'I', 14], ['love', {}], [nil, :foo, 'ruby!']] }

    it 'returns a new array with only the strings in the given array' do
      expected_output = [['I'], ['love'], ['ruby!']]
      expect(iterate_over_nested_array(array)).to eq(expected_output)
    end

    it 'does not mutate the original array' do
      iterate_over_nested_array(array)
      expect(array).to eq([[true, 'I', 14], ['love', {}], [nil, :foo, 'ruby!']])
    end
  end

  describe 'iterate over array of hashes exercise' do
    let(:array) do
      [
        {
          name: 'Ruby',
          facts: ['was made for programmer happiness', 'its code is beautiful'],
          initial_release: 'December 25, 1996',
          is_my_favorite: true
        },
        {
          name: 'Javascript',
          facts: ['you have to use semicolons everywhere', "its real name isn't even javascript"],
          initial_release: 'December 4, 1995',
          is_my_favorite: false
        }
      ]
    end

    it 'returns an array with the value associated with the name key from each hash object' do
      expected_output = %w[Ruby Javascript]
      expect(iterate_over_array_of_hashes(array, :name)).to eq(expected_output)
    end

    it 'returns an array with the value associated with the facts key from each hash object' do
      expected_output = [
        ['was made for programmer happiness', 'its code is beautiful'],
        ['you have to use semicolons everywhere', "its real name isn't even javascript"]
      ]
      expect(iterate_over_array_of_hashes(array, :facts)).to eq(expected_output)
    end
  end
end
