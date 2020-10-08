require 'spec_helper'
require_relative '../exercises/numbers_exercises'

RSpec.describe 'Numbers Exercises' do 

  describe 'addition exercise' do

    it 'adds two numbers' do 
      expect(addition_exercise(1, 2)).to eq(3)
    end

    xit 'adds two negative numbers' do 
      expect(addition_exercise(-5, -10)).to eq(-15)
    end

  end

  describe 'subtraction exercise' do 

    xit 'subtracts two numbers' do
      expect(subtraction_exercise(5, 3)).to eq(2)
    end

    xit 'subtracts two negative numbers' do 
      expect(subtraction_exercise(-5, -10)).to eq(5)
    end

  end

  describe 'multiplication exercise' do

    xit 'multiplies two numbers' do 
      expect(multiplication_exercise(5, 5)).to eq(25)
    end

    xit 'multiplies two negative numbers' do 
      expect(multiplication_exercise(-3, -6)).to eq(18)
    end

  end

  describe 'division exercise' do 

    xit 'divides two numbers' do
      expect(division_exercise(25, 5).to eq(5)
    end

    xit 'divides two negative numbers' do 
      expect(division_exercise(-10, -5).to eq(5)
    end

   end

  describe 'modulus exercise' do

    xit 'returns the remainder using modulo' do
      expect(modulo_exercise(25, 5).to eq(0)
    end

    xit 'returns the remainder when it is not 0' do 
      expect(modulo_exercise(13, 5).to eq(3)
    end

  end

  describe 'float exercise' do 

    xit 'returns a float' do 
      expect(float_exercise(10, 2)).to eq(5.0)
    end

    xit 'returns a float with negative numbers' do 
      expect(float_exercise(-16, -4)).to eq(4.0)
    end

  end

  describe 'string to number exercise' do

    xit 'returns a number from a string' do
      expect(string_to_number_exercise('1')).to eq(1)
    end

    xit 'returns a negative number from a string' do 
      expect(string_to_number_exercise('-5')).to eq(-5)
    end

  end

  describe 'even exercise' do 

    xit 'returns true when the number is even' do 
      expect(even_exercise(6)).to eq(true)
    end

    xit 'returns false when the number is not even' do
      expect(even_exercise(5)).to eq(false)
    end

  end

  describe 'odd exercise' do

    xit 'returns true when the number is odd' do 
       expect(odd_exercise(9)).to eq(true)
    end

    xit 'returns false when the number is not odd' do 
       expect(odd_exercise(6)).to eq(false)
    end

  end
end
