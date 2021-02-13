require 'spec_helper'
require_relative '../exercises/matrix_debugging_exercises'

RSpec.describe 'Debugging Exercises' do
  square_matrix = create_matrix("3 5 7 9\n13 2 0 1\n9 6 77 2\n 2 5 14 8")
  matrix = create_matrix("1 4 7 9 3\n 6 45 3 1 0\n 6 6 7 34 25")

  describe 'get row of a matrix exercise' do
    it 'returns the expected row for a square matrix' do
      square_matrix = create_matrix("3 5 7 9\n13 2 0 1\n9 6 77 2\n 2 5 14 8")
      result = [3, 5, 7, 9]
      expect(get_row(square_matrix, 1)).to eq(result)
    end

    # remove the 'x' from the line below to unskip the test
    it 'returns the expected row for a square matrix' do
      result = [9, 6, 77, 2]
      expect(get_row(square_matrix, 3)).to eq(result)
    end

    # remove the 'x' from the line below to unskip the test
    it 'returns the expected row for a rectangular matrix' do
      result = [6, 45, 3, 1, 0]
      expect(get_row(matrix, 2)).to eq(result)
    end

    # remove the 'x' from the line below to unskip the test
    it 'returns the expected row for a rectangular matrix' do
      result = [6, 6, 7, 34, 25]
      expect(get_row(matrix, 3)).to eq(result)
    end
  end

  describe 'get column of a matrix exercise' do
    # remove the 'x' from the line below to unskip the test
    it 'returns the expected column for a square matrix' do
      result = [3, 13, 9, 2]
      expect(get_column(square_matrix, 1)).to eq(result)
    end

    # remove the 'x' from the line below to unskip the test
    it 'returns the expected column for a square matrix' do
      result = [7, 0, 77, 14]
      expect(get_column(square_matrix, 3)).to eq(result)
    end

    # remove the 'x' from the line below to unskip the test
    it 'returns the expected column for a rectangular matrix' do
      result = [7, 3, 7]
      expect(get_column(matrix, 3)).to eq(result)
    end

    # remove the 'x' from the line below to unskip the test
    it 'returns the expected column for a rectangular matrix' do
      result = [3, 0, 25]
      expect(get_column(matrix, 5)).to eq(result)
    end
  end

  describe 'get sum of row exercise' do
    # remove the 'x' from the line below to unskip the test
    it 'returns the expected sum for a square matrix' do
      expect(sum_of_row(square_matrix, 3)).to eq(94)
    end

    # remove the 'x' from the line below to unskip the test
    it 'returns the expected sum for a rectangular matrix' do
      expect(sum_of_row(matrix, 2)).to eq(55)
    end
  end

  describe 'get column of row exercise' do
    # remove the 'x' from the line below to unskip the test
    it 'returns the expected sum for a square matrix' do
      expect(sum_of_column(square_matrix, 3)).to eq(98)
    end

    # remove the 'x' from the line below to unskip the test
    it 'returns the expected sum for a rectangular matrix' do
      expect(sum_of_column(matrix, 4)).to eq(44)
    end
  end
end
