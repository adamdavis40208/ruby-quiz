require 'rspec'
require_relative '../lib/nth_prime_number'

describe NthPrimeNumber do
  describe '.find_nth_prime_number' do
    context 'Get the nth prime. Plain and simple.' do
      it 'The 6th prime is 13' do
        expect(NthPrimeNumber.find_nth_prime_number(6)).to eq(13)
      end
      it 'should be 104743 for 10_001' do
        expect(NthPrimeNumber.find_nth_prime_number(10_001)).to eq(104743)
      end
    end
  end
end
