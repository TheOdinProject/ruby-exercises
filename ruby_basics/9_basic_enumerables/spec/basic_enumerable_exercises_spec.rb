require 'spec_helper'
require_relative '../exercises/basic_enumerable_exercises'

RSpec.describe 'Method Exercises' do

  describe 'exercise' do

    it 'outputs each inventory item' do
      list = { apples: 1, bananas: 3, oranges: 7 }
      expect($stdout).to receive(:puts).with("apples: 1")
      expect($stdout).to receive(:puts).with("bananas: 3")
      expect($stdout).to receive(:puts).with("oranges: 7")
      current_inventory(list)
    end

    # remove the 'x' from the line below to unskip the test
    it 'outputs ... when inventory item is nil' do
      list = { pineapple: nil }
      expect($stdout).to receive(:puts).with("pineapple: ")
      current_inventory(list)
    end
  end
  
  describe 'exercise' do
    
    it 'outputs ...' do
      array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      expect($stdout).to receive(:puts).with(0)
      expect($stdout).to receive(:puts).with(3)
      expect($stdout).to receive(:puts).with(6)
      expect($stdout).to receive(:puts).with(9)
      index_method(array)
    end

    it 'outputs ... when nil' do
      array = [nil, nil, nil]
      expect($stdout).to receive(:puts).with(nil)
      index_method(array)
    end
  end

  describe 'exercise' do
    
    it 'outputs ...' do
      array = ['Amy', 'Brad', 'Carl', 'Drew']
      expect(map_method(array)).to eq(['Yma', 'Darb', 'Lrac', 'Werd'])
    end
    
    it 'outputs ...' do
      array = ['Larry', 'Max', 'Ned']
      expect(map_method(array)).to eq(["Yrral", "Xam", "Den"])
    end
  end

  describe 'exercise' do
    
    it 'outputs ...' do
      list = { apples: 1, bananas: 3, oranges: 7 }
      expect(low_inventory(list)).to eq(list = { apples: 1, bananas: 3 })
    end

    it 'outputs ...' do
      list = { apples: 1, bananas: 3, oranges: 7, pineapple: 0 }
      expect(low_inventory(list)).to eq(list = { apples: 1, bananas: 3, pineapple: 0 })
    end
  end
end

# Lesson: https://www.theodinproject.com/courses/ruby-programming/lessons/basic-enumerable-methods

#  each
#  each_with_index
#  map
#  select
#  reduce
#  bang versions -> SKIP?

# EACH
# Chuck Norris example?
# friends.each { |friend| puts "Hello, " + friend }

# my_array.each do |num|
#   num *= 2
#   puts "The new number is #{num}."
# end

# my_hash.each { |key, value| puts "#{key} is #{value}" }

# my_hash.each { |pair| puts "the pair is #{pair}" }
# contact_info = { 'name' => 'Bob', 'phone' => '111-111-1111' } 
# contact_info.each { |key, value| print key + ' = ' + value + "\n" } 

# EACH WITH INDEX
# fruits.each_with_index { |fruit, index| puts fruit if index.even? }
# Just like with the #each method, #each_with_index returns the original array it’s called on.

# MAP
# friends.map { |friend| friend.upcase }

# my_order.map { |item| item.gsub('medium', 'extra large') }

# salaries.map { |salary| salary - 700 }
# Whenever you want to return a new array with the results of running your block of code, #map is the method for you!

# SELECT
# friends.select { |friend| friend != 'Brian' }

# responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
# responses.select { |person, response| response == 'yes'}

# REDUCE
# my_numbers.reduce { |sum, number| sum + number }
# my_numbers.reduce(1000) { |sum, number| sum + number }

# votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

# votes.reduce(Hash.new(0)) do |result, vote|
#   result[vote] += 1
#   result
# end
