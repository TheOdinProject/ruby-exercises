require 'spec_helper'
require_relative '../exercises/method_exercises'

RSpec.describe 'Method Exercises' do

  describe 'ASCII translator exercise using #chr' do

    it 'returns an uppercase A' do
      expect(ascii_translator(65)).to eq('A')
    end

    # remove the 'x' from the line below to unskip the test
    it 'returns a lowercase z' do
      expect(ascii_translator(122)).to eq('z')
    end

    it 'returns an exclamation mark' do
      expect(ascii_translator(33)).to eq('!')
    end
  end

  describe 'common sports exercise using #intersection' do

    it 'returns the common sports' do
      current = ['tennis', 'football', 'baseball']
      favorite = ['baseball', 'tennis', 'basketball']
      expect(common_sports(current, favorite)).to eq(['tennis', 'baseball'])
    end

    it 'returns an empty array when there are no common sports' do
      current = ['tennis', 'football', 'wrestling']
      favorite = ['baseball', 'basketball']
      expect(common_sports(current, favorite)).to eq([])
    end
  end

  describe 'alphabetical list exercise using #sort and #uniq chained' do

    it 'returns an sorted array removing one duplicate' do
      games = ['Chess', 'Scrabble', 'Othello', 'Chess']
      expect(alphabetical_list(games)).to eq(['Chess', 'Othello', 'Scrabble'])
    end
    
    it 'returns an sorted array removing multiple duplicates' do
      games = ['Monopoly', 'Checkers', 'Risk', 'Checkers', 'Risk', 'Checkers']
      expect(alphabetical_list(games)).to eq(['Checkers', 'Monopoly', 'Risk'])
    end
  end

  describe 'lucky number exercise using a default parameter' do

    it 'returns a string with the provided argument' do
      expect(lucky_number(42)).to eq("Today's lucky number is 42")
    end

    it 'returns a string with the default parameter' do
      expect(lucky_number).to eq("Today's lucky number is 7")
    end
  end

  describe 'ASCII code exercise using implicit and explicit return' do

    it 'returns number for uppercase letter' do
      expect(ascii_code('A')).to eq(65)
    end

    it 'returns number for lowercase letter' do
      expect(ascii_code('z')).to eq(122)
    end

    it 'returns input error when there is less than one character' do
      expect(ascii_code('')).to eq('Input Error')
    end

    it 'returns input error when there is more than one character' do
      expect(ascii_code('word')).to eq('Input Error')
    end
  end

  describe 'pet pun exercise using console output' do

    it 'returns nil' do
      allow($stdout).to receive(:puts).with("Cats are purr-fect!")
      expect(pet_pun('cat')).to be nil
    end

    it 'outputs the cat pun' do
      expect { pet_pun('cat') }.to output("Cats are purr-fect!\n").to_stdout
    end

    it 'outputs the dog pun' do
      expect { pet_pun('dog') }.to output("Dogs are paw-some!\n").to_stdout
    end

    it 'outputs the default pet pun' do
      expect { pet_pun('rabbit') }.to output("I think rabbits have pet-tential!\n").to_stdout
    end
  end

  describe 'twenty-first century predicate exercise' do

    it 'returns true when the year is between 2001 - 2100' do
      expect(twenty_first_century?(2024)).to be true
    end

    it 'returns true when the year is 2001' do
      expect(twenty_first_century?(2001)).to be true
    end

    it 'returns true when the year is 2100' do
      expect(twenty_first_century?(2100)).to be true
    end

    it 'returns false when the year is not between 2001 - 2100' do
      expect(twenty_first_century?(1999)).to be false
    end
  end
end
