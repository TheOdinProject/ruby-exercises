require 'spec_helper'
require_relative '../exercises/hash_exercises'

RSpec.describe 'Hash Exercises' do
  describe 'favorite hash exercise' do

    it 'returns result with a string and integer' do
      favorite = favorite_hash('blue', 65)
      result = { 'color' => 'blue', :number => 65 }
      expect(favorite).to eq(result)
    end
    
    # remove the 'x' from the line below to unskip the test
    it 'returns result with an array and hash' do
      favorite = favorite_hash(['orange', 'green'], { 7 => 'lucky' })
      result = { 'color' => ['orange', 'green'], :number => { 7 => 'lucky' } }
      expect(favorite).to eq(result)
    end
  end

  describe 'favorite color exercise' do

    it 'returns a string' do
      my_favorite = { 'color' => 'blue', :number => 65 }
      expect(favorite_color(my_favorite)).to eq('blue')
    end

    it 'returns an array' do
      my_favorite = { 'color' => ['orange', 'green'], :number => { 7 => 'lucky' } }
      expect(favorite_color(my_favorite)).to eq(['orange', 'green'])
    end
  end

  describe 'favorite number exercise' do

    it 'returns an integer' do
      my_favorite = { 'color' => 'blue', :number => 65 }
      expect(favorite_number(my_favorite)).to eq(65)
    end

    it 'returns a hash' do
      my_favorite = { 'color' => ['orange', 'green'], :number => { 7 => 'lucky' } }
      expect(favorite_number(my_favorite)).to eq({ 7 => 'lucky' })
    end

    it 'returns the default number when the key is not found' do
      my_favorite = { 'color' => ['orange', 'green'], :movie => 'Avengers: Endgame' }
      expect(favorite_number(my_favorite)).to eq(42)
    end
  end

end
