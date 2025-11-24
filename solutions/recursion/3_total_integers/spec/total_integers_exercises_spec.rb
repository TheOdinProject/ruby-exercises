require 'spec_helper'
require_relative '../exercises/total_integers_exercises'

RSpec.describe '#total_integers' do
  # This shared context ensures that the solution uses recursion
  # and doesn't take a shortcut by using Array#flatten
  shared_context 'array that should not use flatten' do
    before do
      allow(test_array).to receive(:flatten).and_call_original
    end

    after do
      expect(test_array).not_to have_received(:flatten)
    end
  end

  context 'with a 3 integer array' do
    include_context 'array that should not use flatten'
    let(:test_array) { [1, 2, 3] }

    it 'returns 3' do
      expect(total_integers(test_array)).to eq 3
    end
  end

  context 'with non integer values' do
    include_context 'array that should not use flatten'
    let(:test_array) { [1, 2, '3'] }

    it 'ignores non integer values' do
      expect(total_integers(test_array)).to eq 2
    end
  end

  context 'with floating point numbers' do
    include_context 'array that should not use flatten'
    let(:test_array) { [1.0, 2.5, 0.7] }

    it 'ignores floating point numbers' do
      expect(total_integers(test_array)).to eq 0
    end
  end

  context 'with an empty nested array' do
    include_context 'array that should not use flatten'
    let(:test_array) { [[], [], []] }

    it 'returns 0' do
      expect(total_integers(test_array)).to eq 0
    end
  end

  context 'with a deeply nested two integer array' do
    include_context 'array that should not use flatten'
    let(:test_array) { [[[[[[[[[[[[[[4]]]]]], 246]]]]]]]] }

    it 'returns 2' do
      expect(total_integers(test_array)).to eq 2
    end
  end

  context 'with a complex, deeply nested three integer array' do
    include_context 'array that should not use flatten'
    let(:test_array) { [{}, [555], '444', [nil, 74.0, [4]], [[6]]] }

    it 'returns 3' do
      expect(total_integers(test_array)).to eq 3
    end
  end
end
