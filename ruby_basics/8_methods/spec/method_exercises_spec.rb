require 'spec_helper'
require_relative '../exercises/method_exercises'

RSpec.describe 'Method Exercises' do
  describe 'chaining methods exercise' do

    it 'returns an sorted array of names' do
      names = ['Carl', 'Bob', 'Amy', 'Bob']
      expect(final_list(names)).to eq(['Amy', 'Bob', 'Carl'])
    end
    
    # remove the 'x' from the line below to unskip the test
    it 'returns an sorted array of numbers' do
      numbers = [3, 5, 2, 2]
      expect(final_list(numbers)).to eq([2, 3, 5])
    end
  end
end

# Lesson: https://www.theodinproject.com/courses/ruby-programming/lessons/methods

# Creating their own methods - 2 or 3 exercises for this
# different types of arguments
# different return values
# make your own predicate method
  # modulo - write a method called divisible_by_four? that returns
# make your own bang method
# I think for the last two points we could get them to reimplement something like the array empty? method and the string upcase! method.
  
# Ideas:
# - loops
# - && ||
# - Chaining, like phrase.reverse.join(" ").capitalize
# - include?(entry)
# - random # - write a method called dice_roll that returns a random number between 1 - 12
# - abs number

#   return number if number.between?(0, 9)