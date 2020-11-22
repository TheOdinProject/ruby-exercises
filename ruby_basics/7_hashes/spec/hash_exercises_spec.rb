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
      my_favorites = { 'color' => 'blue', :number => 65 }
      expect(favorite_color(my_favorites)).to eq('blue')
    end
    
    it 'returns an array' do
      my_favorites = { 'color' => ['orange', 'green'], :number => { 7 => 'lucky' } }
      expect(favorite_color(my_favorites)).to eq(['orange', 'green'])
    end

    it 'returns nil when the key is not found' do
      my_favorites = { :number => 21, :movie => 'Avengers: Endgame' }
      expect(favorite_color(my_favorites)).to eq(nil)
    end
  end

  describe 'favorite number exercise' do

    it 'returns an integer' do
      my_favorites = { 'color' => 'blue', :number => 65 }
      expect(favorite_number(my_favorites)).to eq(65)
    end

    it 'returns a hash' do
      my_favorites = { 'color' => ['orange', 'green'], :number => { 7 => 'lucky' } }
      expect(favorite_number(my_favorites)).to eq({ 7 => 'lucky' })
    end

    it 'returns the default number when the key is not found' do
      my_favorites = { 'color' => ['orange', 'green'], :movie => 'Avengers: Endgame' }
      expect(favorite_number(my_favorites)).to eq(42)
    end
  end

  describe 'update favorite number exercise' do

    it 'returns hash with a new key/value pair when not included' do
      my_favorites = { 'color' => 'blue', :number => 65 }
      result = { 'color' => 'blue', :number => 65, :movie => 'Avengers: Endgame' }
      expect(update_favorite_movie(my_favorites, 'Avengers: Endgame')).to eq(result)
    end

    it 'returns hash with an updated key/value pair when included' do
      my_favorites = { 'color' => 'emerald green', :movie => 'Avengers: Endgame' }
      result = { 'color' => 'emerald green', :movie => 'Avengers: Infinity War' }
      expect(update_favorite_movie(my_favorites, 'Avengers: Infinity War')).to eq(result)
    end
  end

  describe 'remove favorite number exercise' do

    it 'returns hash without key/value pair when included' do
      my_favorites = { 'color' => 'blue', :number => 65, :movie => 'Avengers: Endgame' }
      result = { 'color' => 'blue', :movie => 'Avengers: Endgame' }
      expect(remove_favorite_number(my_favorites)).to eq(result)
    end

    it 'returns hash when key/value pair is not included' do
      my_favorites = { 'color' => 'blue', :movie => 'Avengers: Endgame' }
      expect(remove_favorite_number(my_favorites)).to eq(my_favorites)
    end
  end

  describe 'favorite categories exercise' do

    it 'returns an array of the keys' do
      my_favorites = { 'color' => 'blue', :number => 65, :movie => 'Avengers: Endgame' }
      expect(favorite_categories(my_favorites)).to eq(['color', :number, :movie])
    end

    it 'returns an empty array when hash is empty' do
      my_favorites = {}
      expect(favorite_categories(my_favorites)).to eq([])
    end

  end

  describe 'favorite items exercise' do

    it 'returns an array with the string and integer values' do
      my_favorites = { 'color' => 'blue', :number => 65, :movie => 'Avengers: Endgame' }
      expect(favorite_items(my_favorites)).to eq(['blue', 65, 'Avengers: Endgame'])
    end

    it 'returns an array with the array and hash values' do
      my_favorites = { 'color' => ['orange', 'green'], :number => { 7 => 'lucky' } }
      expect(favorite_items(my_favorites)).to eq([['orange', 'green'], { 7 => 'lucky' }])
    end

    it 'returns an empty array when hash is empty' do
      my_favorites = {}
      expect(favorite_items(my_favorites)).to eq([])
    end
  end

  describe 'favorite items exercise' do

    it 'returns a merged hash' do
      my_favorites = { 'color' => 'blue', :number => 65 }
      new_favorites = { :movie => 'Avengers: Endgame' }
      result = { 'color' => 'blue', :number => 65, :movie => 'Avengers: Endgame' }
      expect(merge_favorites(my_favorites, new_favorites)).to eq(result)
    end

    it 'returns a updated hash' do
      my_favorites = { 'color' => 'blue', :number => 65, :movie => 'Avengers: Endgame' }
      new_favorites = { :movie => 'Avengers: Infinity War' }
      result = { 'color' => 'blue', :number => 65, :movie => 'Avengers: Infinity War' }
      expect(merge_favorites(my_favorites, new_favorites)).to eq(result)
    end
  end

end
