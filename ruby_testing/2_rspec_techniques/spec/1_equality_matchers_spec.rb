# frozen_string_literal: true

RSpec.describe 'Equality Matcher Exercises' do
  describe 'eq and eql (equality matchers)' do
    let(:my_score) { 10.0 } # Float
    let(:your_score) { 10 } # Integer

    context 'when using eq matcher' do
      # NOTE: the eq matcher looks at the VALUE of the objects.

      # Using the eq matcher, test that my_score is eq to your_score
    end

    context 'when using eql matcher' do
      # NOTE: the eql matcher looks at the VALUE and the TYPE of the objects.

      # Temporarily remove the 'x' from the following test, run this test, and read the error message.
      # It fails because my_score and your_score do not have eql VALUE and TYPE.
      xit 'has eql value and type' do
        expect(my_score).to eql(your_score)
      end

      # Using the eql matcher, test that my_score is not eql to your_score
    end
  end

  describe 'eql, equal, and be (equality matchers)' do
    let(:my_car) { { year: 2013, make: 'Toyota', model: 'Camry' } }
    let(:your_car) { { year: 2013, make: 'Toyota', model: 'Camry' } }
    let(:my_kids_borrowed_car) { my_car }

    context 'when using eql matcher' do
      # Using the eql matcher, test that my_car is eql to your_car

      # Using the eql matcher, test that my_kids_borrowed_car is eql to your_car
    end

    # Wait a second... my kids can borrow your car!?!

    context 'when using equal matcher' do
      # NOTE: the equal matcher looks at the OBJECT IDENTITY.

      # Temporarily remove the 'x' from the following test, run this test, and read the error message.
      # It fails because my_kids_borrowed_car and your_car do not have the same OBJECT IDENTITY.
      xit 'has object identity' do
        expect(my_kids_borrowed_car).to equal(your_car)
      end

      # Using the equal matcher, test that my_kids_borrowed_car is not equal to your_car
    end

    # Whew! I bet you're relieved that my kids can not borrow your car anymore!

    context 'when using be matcher' do
      # NOTE: the be matcher is similar to the equal matcher (looks at the OBJECT IDENTITY).

      # Using the be matcher, test that my_kids_borrowed_car is my_car

      # Using the be matcher, test that my_kids_borrowed_car is not your_car
    end
  end
end
