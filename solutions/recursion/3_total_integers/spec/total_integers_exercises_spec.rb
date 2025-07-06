require 'spec_helper'
require_relative '../exercises/total_integers_exercises'

RSpec.describe '#total_integers' do
  it 'returns 3 with a 3 integer array' do
    three_int_array = [1, 2, 3]
    expect(total_integers(three_int_array)).to eq 3
  end

  it 'ignores non integer values' do
    array_with_string = [1, 2, '3']
    expect(total_integers(array_with_string)).to eq 2
  end

  it 'ignores floating point numbers' do
    float_array = [1.0, 2.5, 0.7]
    expect(total_integers(float_array)).to eq 0
  end

  it 'returns 0 with an empty nested array' do
    empty_nested_array = [[], [], []]
    expect(total_integers(empty_nested_array)).to eq 0
  end

  it 'returns 2 with a deeply nested two integer array' do
    deeply_nested_array = [[[[[[[[[[[[[[4]]]]]], 246]]]]]]]]
    expect(total_integers(deeply_nested_array)).to eq 2
  end

  it 'returns 3 with a complex, deeply nested three integer array' do
    complex_array = [{}, [555], '444', [nil, 74.0, [4]], [[6]]]
    expect(total_integers(complex_array)).to eq 3
  end
end
