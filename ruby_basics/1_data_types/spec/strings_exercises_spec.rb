require 'spec_helper'
require_relative '../exercises/string_exercises'

RSpec.describe 'String Exercises' do

  describe 'concatenation example exercise' do

    it 'returns "Classic Ruby"' do
      expect(concatenate_example('Ruby')).to eq('Classic Ruby')
    end
  end

  describe 'concatenation exercise' do

    it 'returns "Hello world!"' do
      expect(concatenate('world')).to eq('Hello world!')
    end

    it 'returns "Hello universe!"' do
      expect(concatenate('universe')).to eq('Hello universe!')
    end
  end

  describe 'substrings exercise' do

    it 'returns the first 4 letters of the word' do
      expect(substrings('chocolate')).to eq('choc')
    end
  end

  describe 'capitalizing exercise' do

    it 'capitalizes a word' do
      expect(capitalize('paris')).to eq('Paris')
    end

    it 'only capitalizes the first word if there are multiple words' do
      expect(capitalize('miami in the summer')).to eq('Miami in the summer')
    end

    it 'leaves an already capitalized word as is' do
      expect(capitalize('London')).to eq('London')
    end
  end

  describe 'uppercasing exercise' do

    it 'uppercases a word' do
      expect(uppercase('small')).to eq('SMALL')
    end

    it 'uppercases multiple words' do
      expect(uppercase('make me bigger')).to eq('MAKE ME BIGGER')
    end
  end


  describe 'downcasing exercise' do

    it 'downcases a word' do
      expect(downcase('LARGE')).to eq('large')
    end

    it 'downcases multiple words' do
      expect(downcase('MAKE ME SMALLER')).to eq('make me smaller')
    end
  end

  describe 'empty exercise' do

    it 'returns true if string is empty' do
      expect(empty_string('')).to eq(true)
    end

    it 'returns false if string is not empty' do
      expect(empty_string('wow')).to eq(false)
    end
  end

  describe 'length exercise' do

    it 'returns the length of a word' do
      expect(string_length('longitude')).to eq(9)
    end

    it 'returns the length of a string with multiple words' do
      expect(string_length('i am quite long')).to eq(15)
    end
  end

  describe 'reverse exercise' do

    it 'reverses a word' do
      expect(reverse('desrever')).to eq('reversed')
    end

    it 'reverses multiple words' do
      expect(reverse('dnuora kcab')).to eq('back around')
    end
  end

  describe 'remove spaces exercise' do

    it 'removes a single space' do
      expect(space_remover('white space')).to eq('whitespace')
    end

    it 'removes multiple spaces' do
      expect(space_remover('many white spaces')).to eq('manywhitespaces')
    end
  end
end
