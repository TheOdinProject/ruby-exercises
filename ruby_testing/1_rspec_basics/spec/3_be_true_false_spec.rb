# frozen_string_literal: true

RSpec.describe 'Be True False Matcher Exercises' do
  describe 'be truthy and falsy matcher' do
    # Using the be matcher, write a test that any string, for example 'hello' is truthy

    # Using the be matcher, write a test that any number, for example -100 is truthy

    # Using the be matcher, write a test that any array, for example [] is truthy

    # Using the be matcher, write a test that true is truthy

    # Using the be matcher, write a test that false is falsy

    # Using the be matcher, write a test that nil is falsy
  end

  # As you can see, almost all values are truthy, with the exception of false and nil.
  # Therefore do not use 'be_truthy' or 'be_falsy' for methods that should only be evaluated into a Boolean.
  # https://eddyluten.com/rspec-be_truthy-exists-or-be-true

  def palindrome?(word)
    word.reverse == word
  end

  describe 'be true and false matcher' do
    # Using the be matcher, write a test that palindrome?('cat') is false

    # Using the be matcher, write a test that palindrome?('level') is true

    # Using the be matcher, write a test that palindrome?('racecar') is true

    # Using the be matcher, write a test that palindrome?('odin') is false
  end
end
