require 'spec_helper'
require_relative '../exercises/hash_exercises'

RSpec.describe 'Hash Exercises' do
  describe 'create favorite hash exercise' do

    it 'returns result with a string and integer' do
      favorite = create_favorite_hash('blue', 65)
      result = { color: 'blue', number: 65 }
      expect(favorite).to eq(result)
    end
    
    # remove the 'x' from the line below to unskip the test
    xit 'returns result with an array and hash' do
      favorite = create_favorite_hash(['orange', 'green'], { lucky: 7 })
      result = { color: ['orange', 'green'], number: { lucky: 7 } }
      expect(favorite).to eq(result)
    end
  end

  describe 'favorite color exercise' do

    xit 'returns a string' do
      my_favorites = { color: 'blue', number: 65 }
      expect(favorite_color(my_favorites)).to eq('blue')
    end
    
    xit 'returns an array' do
      my_favorites = { color: ['orange', 'green'], number: { lucky: 7 } }
      expect(favorite_color(my_favorites)).to eq(['orange', 'green'])
    end

    xit 'returns nil when the key is not found' do
      my_favorites = { number: 21, movie: 'Avengers: Endgame' }
      expect(favorite_color(my_favorites)).to eq(nil)
    end
  end

  describe 'favorite number exercise' do

    xit 'returns an integer' do
      my_favorites = { color: 'blue', number: 65 }
      expect(favorite_number(my_favorites)).to eq(65)
    end

    xit 'returns a hash' do
      my_favorites = { color: ['orange', 'green'], number: { lucky: 7 } }
      expect(favorite_number(my_favorites)).to eq({ lucky: 7 })
    end

    xit 'returns the default number when the key is not found' do
      my_favorites = { color: ['orange', 'green'], movie: 'Avengers: Endgame' }
      expect(favorite_number(my_favorites)).to eq(42)
    end
  end

  describe 'update favorite movie exercise' do

    xit 'returns hash with a new key/value pair when not included' do
      my_favorites = { color: 'blue', number: 65 }
      result = { color: 'blue', number: 65, movie: 'Avengers: Endgame' }
      expect(update_favorite_movie(my_favorites, 'Avengers: Endgame')).to eq(result)
    end

    xit 'returns hash with an updated key/value pair when included' do
      my_favorites = { color: 'emerald green', movie: 'Avengers: Endgame' }
      result = { color: 'emerald green', movie: 'Avengers: Infinity War' }
      expect(update_favorite_movie(my_favorites, 'Avengers: Infinity War')).to eq(result)
    end
  end

  describe 'remove favorite number exercise' do

    xit 'returns hash without key/value pair when included' do
      my_favorites = { color: 'blue', number: 65, movie: 'Avengers: Endgame' }
      result = { color: 'blue', movie: 'Avengers: Endgame' }
      expect(remove_favorite_number(my_favorites)).to eq(result)
    end

    xit 'returns hash when key/value pair is not included' do
      my_favorites = { color: 'blue', movie: 'Avengers: Endgame' }
      expect(remove_favorite_number(my_favorites)).to eq(my_favorites)
    end
  end

  describe 'favorite categories exercise' do

    xit 'returns an array of the keys' do
      my_favorites = { color: 'blue', number: 65, movie: 'Avengers: Endgame' }
      expect(favorite_categories(my_favorites)).to eq([:color, :number, :movie])
    end

    xit 'returns an empty array when hash is empty' do
      my_favorites = {}
      expect(favorite_categories(my_favorites)).to eq([])
    end
  end

  describe 'favorite items exercise' do

    xit 'returns an array with the string and integer values' do
      my_favorites = { color: 'blue', number: 65, movie: 'Avengers: Endgame' }
      expect(favorite_items(my_favorites)).to eq(['blue', 65, 'Avengers: Endgame'])
    end

    xit 'returns an array with the array and hash values' do
      my_favorites = { color: ['orange', 'green'], number: { lucky: 7 } }
      expect(favorite_items(my_favorites)).to eq([['orange', 'green'], { lucky: 7 }])
    end

    xit 'returns an empty array when hash is empty' do
      my_favorites = {}
      expect(favorite_items(my_favorites)).to eq([])
    end
  end

  describe 'merge favorites exercise' do

    xit 'returns a hash with all key/value pairs when there is not a duplicate' do
      my_favorites = { color: 'blue', number: 65 }
      favorite_movie = { movie: 'Avengers: Endgame' }
      result = { color: 'blue', number: 65, movie: 'Avengers: Endgame' }
      expect(merge_favorites(my_favorites, favorite_movie)).to eq(result)
    end

    xit 'returns a hash with an updated value when there is duplicate' do
      my_favorites = { color: 'emerald green', movie: 'Avengers: Endgame' }
      favorite_movie = { movie: 'Avengers: Infinity War' }
      result = { color: 'emerald green', movie: 'Avengers: Infinity War' }
      expect(merge_favorites(my_favorites, favorite_movie)).to eq(result)
    end

    xit 'returns a hash with all key/value pairs and an updated value when there is duplicate' do
      my_favorites = { color: 'teal', number: 65 }
      new_favorites = { number: 42, movie: "The Hitchhiker's Guide to the Galaxy" }
      result = { color: 'teal', number: 42, movie: "The Hitchhiker's Guide to the Galaxy" }
      expect(merge_favorites(my_favorites, new_favorites)).to eq(result)
    end
  end
end
