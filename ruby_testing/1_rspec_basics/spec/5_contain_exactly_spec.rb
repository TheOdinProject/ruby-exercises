# frozen_string_literal: true

def create_range(min, max)
  (min..max).to_a
end

RSpec.describe 'Contain Exactly Matcher Exercises' do
  # Write a test that create_range(0, 3) contains exactly 0, 1, 2, 3

  # Write a test that create_range(0, 3) contains exactly 3, 2, 1, 0

  # Write a test that create_range(0, 3) contains exactly 1, 3, 0, 2

  # Write a test that create_range(0, 3) contains exactly 2, 0, 3, 1
end
