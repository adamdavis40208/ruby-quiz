require 'rspec'
require_relative '../lib/smallest_no_remainder'

describe SmallestNoRemainder do
  describe ".find_smallest_number_divisible_by_range" do
    context 'The small number divisible by a range' do
      it 'should be 2520 for the range of 1-10' do
        expect(SmallestNoRemainder.find_smallest_number_divisible_by_range(10)).to eq(2520)
      end
      it 'should be 232792560 for the range of 1-20' do
        expect(SmallestNoRemainder.find_smallest_number_divisible_by_range(20)).to eq(232_792_560)
      end
    end
  end
end
