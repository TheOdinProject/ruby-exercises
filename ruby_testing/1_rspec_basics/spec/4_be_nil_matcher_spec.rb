# frozen_string_literal: true

def generate_hashtag(str)
  tag = str.split.map(&:capitalize).join
  return nil unless tag.length.between?(1, 139)

  "##{tag}"
end

RSpec.describe 'Be Nil Matcher Exercises' do
  # Using the be matcher, write a test that generate_hashtag('') is nil

  # Using the be matcher, write a test that generate_hashtag('a' * 140) is nil

  # Using the be matcher, write a test that generate_hashtag(' ' * 140) is nil

  # Using the be matcher, write a test that generate_hashtag('The Odin Project') is not nil
end
