require 'spec_helper'
require_relative '../exercises/nested_array_exercises'

RSpec.describe 'Nested Array Exercises' do
  describe 'blank grid creation exercise' do
    it 'returns a 2d array (grid) containing 2 rows, each containing nil 3 times' do
      expected_output = [[nil, nil, nil], [nil, nil, nil]]
      expect(blank_grid(2, 3)).to eq(expected_output)
    end

    xit 'returns a 2d array (grid) containing 4 arrays, each containing nil 2 times' do
      expected_output = [[nil, nil], [nil, nil], [nil, nil], [nil, nil]]
      expect(blank_grid(4, 2)).to eq(expected_output)
    end

    context 'when one of the rows are changed' do
      xit "doesn't change the other rows" do
        my_array = blank_grid(4, 2)
        my_array[2][1] = true

        expect(my_array).to eq([[nil, nil], [nil, nil], [nil, true], [nil, nil]])
      end
    end
  end

  describe 'add cell to row exercise' do
    let(:array) { [[1, 2, 3], [4, 5, 6]] }

    xit 'returns the array with 7 added to the end of the second row' do
      expected_output = [[1, 2, 3], [4, 5, 6, 7]]
      expect(add_cell_to_row(array, 1, 7)).to eq(expected_output)
    end

    xit 'returns the array with 13 added to the end of the first row' do
      expected_output = [[1, 2, 3, 13], [4, 5, 6]]
      expect(add_cell_to_row(array, 0, 13)).to eq(expected_output)
    end
  end

  describe 'add another row exercise' do
    let(:array) { [[1, 2, 3], [4, 5, 6]] }

    xit 'returns the array with [7, 8, 9] added as a third row' do
      expected_output = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
      expect(add_another_row(array, [7, 8, 9])).to eq(expected_output)
    end

    xit 'returns the array with [5, 4, 3] added as a third row' do
      expected_output = [[1, 2, 3], [4, 5, 6], [5, 4, 3]]
      expect(add_another_row(array, [5, 4, 3])).to eq(expected_output)
    end
  end

  describe 'delete cell from grid exercise' do
    let(:array) { [[1, 2, 3], [4, 5, 6]] }

    xit 'returns the array with the second item in the first row deleted' do
      expected_output = [[1, 3], [4, 5, 6]]
      expect(delete_cell_from_grid(array, 0, 1)).to eq(expected_output)
    end

    xit 'returns the array with the first item in the second row deleted' do
      expected_output = [[1, 2, 3], [5, 6]]
      expect(delete_cell_from_grid(array, 1, 0)).to eq(expected_output)
    end
  end

  describe 'delete row exercise' do
    let(:array) { [[1, 2], [3, 4], [5, 6]] }

    xit 'returns the array with the second row deleted' do
      expected_output = [[1, 2], [5, 6]]
      expect(delete_row_from_grid(array, 1)).to eq(expected_output)
    end

    xit 'returns the array with the first row deleted' do
      expected_output = [[3, 4], [5, 6]]
      expect(delete_row_from_grid(array, 0)).to eq(expected_output)
    end
  end

  describe 'iterate over nested array exercise' do
    let(:array) { [[7, 5, 7], [2, 7, 9]] }

    context "when there are three 7's in the given array" do
      xit 'returns the number 3' do
        expect(iterate_over_grid(array)).to eq(3)
      end
    end

    context "when there are four 7's in the given array" do
      let(:array) { [[7], [8, 6, 7], [5, 3, 0, 9], [7, 7]] }

      xit 'returns the number 4' do
        expect(iterate_over_grid(array)).to eq(4)
      end
    end

    xit 'does not mutate the original array' do
      iterate_over_grid(array)
      expect(array).to eq([[7, 5, 7], [2, 7, 9]])
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

    xit 'returns an array with the value associated with the name key from each hash object' do
      expected_output = %w[Ruby Javascript]
      expect(iterate_over_array_of_hashes(array, :name)).to eq(expected_output)
    end

    xit 'returns an array with the value associated with the facts key from each hash object' do
      expected_output = [
        ['was made for programmer happiness', 'its code is beautiful'],
        ['you have to use semicolons everywhere', "its real name isn't even javascript"]
      ]
      expect(iterate_over_array_of_hashes(array, :facts)).to eq(expected_output)
    end
  end
end
