# frozen_string_literal: true

# In a typical workflow, the class being tested will be located in a separate file from the tests.
# However, for this simple example, we are going to keep everything together.

class SchoolClub
  attr_reader :count, :members

  def initialize(name, members = [])
    @name = name
    @members = members
    @count = members.length
  end

  def add_members(*names)
    names.each do |name|
      @members << name
      @count += 1
    end
  end

  def remove_members(*names)
    names.each do |name|
      next unless @members.include?(name)

      @members.delete(name)
      @count -= 1
    end
  end
end

RSpec.describe SchoolClub do
  # Create a named subject with just a club name, for example SchoolClub.new('Robotics Club')

  describe 'add_members' do
    context 'when adding one new member' do
      # Using a before block, add one member to the club. For example, robotics_club.add_members('Adam')

      # Test the value of count, for example that robotics_club.count is 1

      # Test the value of members, for example that robotics_club.members includes Adam
    end

    context 'when adding three new members' do
      # Using a before block, add three members to the club.
      # For example, robotics_club.add_members('Alice', 'Bob', 'Carrie')

      # Test the value of count, for example that robotics_club.count is 3

      # Test the value of members, for example that robotics_club.members includes Alice, Bob, and Carrie
    end
  end

  describe 'remove_members' do
    # Create a named subject with a club name and a founders variable that we will define in each context.
    # For example SchoolClub.new('Chess Club', founders)

    context 'when removing one member from two member club' do
      # Create a let variable named founders that is an array with two names, for example, ['Adam', 'Beth']

      # Using a before block, remove one member from the club. For example, chess_club.remove_members('Beth')

      # Test the value of count, for example that chess_club.count is 1

      # Test the value of members, for example that chess_club.members does not include Beth
    end

    context 'when removing two members from four member club' do
      # Create another let variable named founders that is an array with four names.
      # For example, ['Alice', 'Bob', 'Carrie', 'Dave']

      # Using a before block, remove two members from the club. For example, chess_club.remove_members('Carrie', 'Dave')

      # Test the value of count, for example that chess_club.count is 2

      # Test the value of members, for example that chess_club.members does not include Carrie or Dave
    end
  end
end
