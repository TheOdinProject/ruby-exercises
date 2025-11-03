require 'spec_helper'
require_relative '../exercises/permutation_exercises'

RSpec.describe '#permutations' do
  it "returns 1 possible permutation for a set containing 0 numbers" do
    expect(permutations([])).to eq [[]]
  end

  it "returns 2 possible permutations for a set containing 2 numbers" do
    expect(permutations([1, 2])).to match_array([[2, 1], [1, 2]])
  end

  it "returns 6 possible permutations for a set containing 3 numbers" do
    expected_set = [
      [1, 2, 3], [1, 3, 2], [2, 1, 3],
      [2, 3, 1], [3, 1, 2], [3, 2, 1]
    ]

    expect(permutations([1, 2, 3])).to match_array(expected_set)
  end

  it "returns 24 possible permutations for a set containing 4 numbers" do
    expected_set = [
      [1, 2, 3, 4], [1, 2, 4, 3], [1, 3, 2, 4], [1, 3, 4, 2],
      [1, 4, 2, 3], [1, 4, 3, 2], [2, 1, 3, 4], [2, 1, 4, 3],
      [2, 3, 1, 4], [2, 3, 4, 1], [2, 4, 1, 3], [2, 4, 3, 1],
      [3, 1, 2, 4], [3, 1, 4, 2], [3, 2, 1, 4], [3, 2, 4, 1],
      [3, 4, 1, 2], [3, 4, 2, 1], [4, 1, 2, 3], [4, 1, 3, 2],
      [4, 2, 1, 3], [4, 2, 3, 1], [4, 3, 1, 2], [4, 3, 2, 1]
    ]

    expect(permutations([1, 2, 3, 4])).to match_array(expected_set)
  end
end
