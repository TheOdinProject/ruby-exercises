require 'spec_helper'
require_relative '../exercises/basic_enumerable_exercises'

RSpec.describe 'Method Exercises' do

  describe 'display current inventory exercise' do

    it 'outputs each inventory item' do
      list = { apples: 1, bananas: 3, oranges: 7 }
      expect($stdout).to receive(:puts).with("apples, quantity: 1")
      expect($stdout).to receive(:puts).with("bananas, quantity: 3")
      expect($stdout).to receive(:puts).with("oranges, quantity: 7")
      display_current_inventory(list)
    end

    # remove the 'x' from the line below to unskip the test
    it 'outputs ... when inventory item is nil' do
      list = { pineapples: nil }
      expect($stdout).to receive(:puts).with("pineapples, quantity: ")
      display_current_inventory(list)
    end
  end
  
  describe 'display guess order exercise' do
    
    it 'outputs ...' do
      guesses = ['cookies', 'cake', 'ice cream']
      expect($stdout).to receive(:puts).with("Guess #1 is cookies")
      expect($stdout).to receive(:puts).with("Guess #2 is cake")
      expect($stdout).to receive(:puts).with("Guess #3 is ice cream")
      display_guess_order(guesses)
    end
  end

  describe 'convert to positive exercise' do
    
    it 'returns an array of positive integers' do
      numbers = [0, -7, 14, -21]
      result = [0, 7, 14, 21]
      expect(convert_to_positive(numbers)).to eq(result)
    end

    it 'returns an array with positive floating numbers' do
      numbers = [-3.14, 6.28, -9.42]
      result = [3.14, 6.28, 9.42]
      expect(convert_to_positive(numbers)).to eq(result)
    end
  end

  describe 'low inventory exercise' do
    
    it 'returns ...' do
      list = { apples: 1, bananas: 3, oranges: 7 }
      expect(low_inventory(list)).to eq({ apples: 1, bananas: 3 })
    end

    it 'returns ...' do
      list = { chocolate_cake: 1.5, vanilla_cake: 4.25, carrot_cake: 3.75 }
      result = { chocolate_cake: 1.5, carrot_cake: 3.75 }
      expect(low_inventory(list)).to eq(result)
    end
  end

  describe 'longest word exercise' do
    
    it 'returns the longest word' do
      list = ['cat', 'horse', 'deer']
      expect(longest_word(list)).to eq('horse')
    end

    it 'returns the last word when they are all the same length' do
      animals = ['cat', 'dog', 'fox', 'bee', 'owl']
      expect(longest_word(animals)).to eq('owl')
    end
  end

  describe 'reduce with memo word exercise' do
    
    it 'returns the longest word' do
      animals = ['cat', 'horse', 'lion', 'panda']
      expect(longest_word_comparison(animals, 'rabbit')).to eq('rabbit')
    end

    it 'returns the last word when they are all the same length' do
      animals = ['cat', 'dog', 'fox', 'bee', 'owl']
      expect(longest_word_comparison(animals, 'pig')).to eq('owl')
    end
  end

  describe 'word length list exercise' do
    
    it 'returns a hash with strings and integers' do
      animals = ['cat', 'horse', 'rabbit', 'deer']
      result = { 'cat' => 3, 'horse' => 5, 'rabbit' => 6, 'deer' => 4 }
      expect(word_length_list(animals)).to eq(result)
    end
    
    it 'returns a hash with symbols and integers' do
      symbols = [:cat, :horse, :rabbit, :deer]
      result = { cat: 3, horse: 5, rabbit: 6, deer: 4 }
      expect(word_length_list(symbols)).to eq(result)
    end
  end
end
