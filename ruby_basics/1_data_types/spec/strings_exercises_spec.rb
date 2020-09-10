require 'spec_helper'
require_relative '../exercises/string_exercises'

RSpec.describe 'String Exercises' do

  describe 'concatenation exercise' do

    it 'returns "hello world!"' do
      expect(concatenation_exercise('world')).to eq('Hello world!')
    end

    xit 'returns "hello univerise!"' do
      expect(concatenation_exercise('universe')).to eq('Hello universe!')
    end

  end
end