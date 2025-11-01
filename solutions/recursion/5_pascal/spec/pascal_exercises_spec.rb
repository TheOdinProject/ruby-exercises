require 'spec_helper'
require_relative '../exercises/pascal_exercises'

RSpec.describe '#pascal' do
  it 'gets the first row of the pascal triangle' do
    expect(pascal(1)).to eq([1])
  end

  it 'gets the second row of the pascal triangle' do
    expect(pascal(2)).to eq([1, 1])
  end

  it 'gets the third row of the pascal triangle' do
    expect(pascal(3)).to eq([1, 2, 1])
  end

  it 'gets the fourth row of the pascal triangle' do
    expect(pascal(4)).to eq([1, 3, 3, 1])
  end

  it 'gets the fifth row of the pascal triangle' do
    expect(pascal(5)).to eq([1, 4, 6, 4, 1])
  end

  it 'gets the sixth row of the pascal triangle' do
    expect(pascal(6)).to eq([1, 5, 10, 10, 5, 1])
  end

  it 'gets the seventh row of the pascal triangle' do
    expect(pascal(7)).to eq([1, 6, 15, 20, 15, 6, 1])
  end
end
