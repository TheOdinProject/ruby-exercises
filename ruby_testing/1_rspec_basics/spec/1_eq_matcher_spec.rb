# frozen_string_literal: true

def generate_hashtag(str)
  tag = str.split.map(&:capitalize).join
  return nil unless tag.length.between?(1, 139)

  "##{tag}"
end

RSpec.describe 'Eq Matcher Exercise' do
  # Write a test that generate_hashtag('The Odin Project') eq '#TheOdinProject'

  # Write a test that generate_hashtag('Ruby on Rails') eq '#RubyOnRails'

  # Write a test that generate_hashtag('Join our Discord Community') eq '#JoinOurDiscordCommunity'
end
