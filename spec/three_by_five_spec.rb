require 'rspec'
require_relative '../lib/three_by_five'

describe ThreeByFive do
  context 'If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. ' do
    context 'The sum of these multiples is 23.' do
      it 'should be 23 for all numbers less than 10' do
        expect(ThreeByFive.find_all_numbers(9)).to eq(23)
      end
      it 'should numbers less than 1000' do
        expect(ThreeByFive.find_all_numbers(999)).to eq(233168)
      end
    end
  end
end