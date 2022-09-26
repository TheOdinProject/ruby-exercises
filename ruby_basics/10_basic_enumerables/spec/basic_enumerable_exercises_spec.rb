require 'spec_helper'
require_relative '../exercises/basic_enumerable_exercises'

RSpec.describe 'Basic Enumerable Exercises' do

  describe 'display current inventory exercise' do

    it 'outputs each inventory item' do
      expect($stdout).to receive(:puts).with("apples, quantity: 1")
      expect($stdout).to receive(:puts).with("bananas, quantity: 3")
      expect($stdout).to receive(:puts).with("oranges, quantity: 7")
      fruit = { apples: 1, bananas: 3, oranges: 7 }
      display_current_inventory(fruit)
    end

    # remove the 'x' from the line below to unskip the test
    it 'outputs item without quantity when value is nil' do
      expect($stdout).to receive(:puts).with("pineapples, quantity: ")
      fruit = { pineapples: nil }
      display_current_inventory(fruit)
    end
  end

  describe 'display guess order exercise' do

    it 'outputs each guess of strings in order' do
      expect($stdout).to receive(:puts).with("Guess #1 is cookies")
      expect($stdout).to receive(:puts).with("Guess #2 is cake")
      expect($stdout).to receive(:puts).with("Guess #3 is ice cream")
      guesses = ['cookies', 'cake', 'ice cream']
      display_guess_order(guesses)
    end

    it 'outputs each guess of integers in order' do
      expect($stdout).to receive(:puts).with("Guess #1 is 553")
      expect($stdout).to receive(:puts).with("Guess #2 is 554")
      expect($stdout).to receive(:puts).with("Guess #3 is 555")
      guesses = [553, 554, 555]
      display_guess_order(guesses)
    end
  end

  describe 'find absolute values exercise' do

    it 'returns an array of positive integers' do
      numbers = [0, -7, 14, -21]
      result = [0, 7, 14, 21]
      expect(find_absolute_values(numbers)).to eq(result)
    end

    it 'returns an array of positive floating point numbers' do
      numbers = [-3.14, 6.28, -9.42]
      result = [3.14, 6.28, 9.42]
      expect(find_absolute_values(numbers)).to eq(result)
    end
  end

  describe 'find low inventory exercise' do

    it 'returns a hash with integer values' do
      fruit = { apples: 1, peaches: 4, bananas: 3, oranges: 7 }
      result = { apples: 1, bananas: 3 }
      expect(find_low_inventory(fruit)).to eq(result)
    end

    it 'returns a hash with floating point number values' do
      cakes = { chocolate_cake: 2.5, vanilla_cake: 4.25, carrot_cake: 3.75 }
      result = { chocolate_cake: 2.5, carrot_cake: 3.75 }
      expect(find_low_inventory(cakes)).to eq(result)
    end
  end

  describe 'find word length exercise' do

    it 'returns a hash with rocket syntax when using strings' do
      animals = ['cat', 'horse', 'rabbit', 'deer']
      result = { 'cat' => 3, 'horse' => 5, 'rabbit' => 6, 'deer' => 4 }
      expect(find_word_lengths(animals)).to eq(result)
    end

    it 'returns a hash with symbols syntax when using symbols' do
      animals = [:cat, :horse, :rabbit, :deer]
      result = { cat: 3, horse: 5, rabbit: 6, deer: 4 }
      expect(find_word_lengths(animals)).to eq(result)
    end
  end
end
