# frozen_string_literal: true

def create_range(min, max)
  (min..max).to_a
end

RSpec.describe 'Include Matcher Exercises' do
  # Write a test that create_range(0, 5) includes 0, 1, 2, 3, 4, 5

  # Write a test that create_range(0, 5) includes 3

  # Write a test that create_range(0, 5) does not include 11

  # Write a test that create_range(5, 10) includes 5, 6, 7, 8, 9, 10

  # Write a test that create_range(5, 10) includes 5, 7, 9

  # Write a test that create_range(5, 10) does not include 0 or 1
end
