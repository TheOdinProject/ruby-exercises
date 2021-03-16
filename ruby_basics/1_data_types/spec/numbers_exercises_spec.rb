require 'spec_helper'
require_relative '../exercises/numbers_exercises'

RSpec.describe 'Numbers Exercises' do

  describe 'addition exercise' do

    it 'adds two numbers' do
      expect(add(1, 2)).to eq(3)
    end
  end

  describe 'subtraction exercise' do

    it 'subtracts two numbers' do
      expect(subtract(5, 3)).to eq(2)
    end
  end
  
  describe 'multiplication exercise' do
    
    # remove the 'x' from the line below to unskip the test
    it 'multiplies two numbers' do
      expect(multiply(5, 5)).to eq(25)
    end
  end

  describe 'division exercise' do

    it 'divides two numbers' do
      expect(divide(25, 5)).to eq(5)
    end
  end

  describe 'modulus exercise' do

    it 'returns the remainder using modulo' do
      expect(remainder(25, 5)).to eq(0)
    end

    it 'returns the remainder when it is not 0' do
      expect(remainder(13, 5)).to eq(3)
    end
  end

  describe 'float exercise' do

    it 'returns a float' do
      expect(float_division(10, 2)).to eql(5.0)
    end
  end

  describe 'string to number exercise' do

    it 'returns an integer from a string' do
      expect(string_to_number('1')).to eq(1)
    end

    it 'returns a negative integer from a string' do
      expect(string_to_number('-5')).to eq(-5)
    end
  end

  describe 'even exercise' do

    it 'returns true when the number is even' do
      expect(even?(6)).to eq(true)
    end

    it 'returns false when the number is not even' do
      expect(even?(5)).to eq(false)
    end
  end

  describe 'odd exercise' do

    it 'returns true when the number is odd' do
       expect(odd?(9)).to eq(true)
    end

    it 'returns false when the number is not odd' do
       expect(odd?(6)).to eq(false)
    end

  end
end
