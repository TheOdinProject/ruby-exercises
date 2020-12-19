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
    
    it 'outputs ...' do
      array = [1, -2, 3]
      expect(convert_to_positive(array)).to eq([1, 2, 3])
    end

    it 'outputs ...' do
      array = [1, -2, 3, 0]
      expect(convert_to_positive(array)).to eq([1, 2, 3, 0])
    end
  end

  describe 'low inventory exercise' do
    
    it 'outputs ...' do
      list = { apples: 1, bananas: 3, oranges: 7 }
      expect(low_inventory(list)).to eq({ apples: 1, bananas: 3 })
    end

    it 'outputs ...' do
      list = { apples: 1, bananas: 3, oranges: 7, pineapple: 0 }
      expect(low_inventory(list)).to eq({ apples: 1, bananas: 3, pineapple: 0 })
    end
  end

  describe 'longest word exercise' do
    
    it 'outputs ...' do
      list = ['cat', 'sheep', 'bear']
      expect(longest_word(list)).to eq('sheep')
    end
  end

  describe 'reduce with default word exercise' do

    it 'outputs ...' do
      list = ['cat', 'sheep', 'bear']
      expect(longest_word_default(list)).to eq('sheep')
    end
  end

  describe 'reduce with memo word exercise' do
    
    it 'outputs ...' do
      list = ['cat', 'sheep', 'bear']
      expect(longest_word_comparison(list, 'piglet')).to eq('piglet')
    end
  end

  describe 'word length list exercise' do
    
    it 'outputs ...' do
      array = ['red', 'blue', 'green']
      result = { 'red' => 3, 'blue' => 4, 'green' => 5 }
      expect(word_length_list(array)).to eq(result)
    end
  end
end
