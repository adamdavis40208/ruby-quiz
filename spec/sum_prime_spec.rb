require 'rspec'
require_relative '../lib/sum_prime_number'

describe SumPrimeNumber do
  describe '.find_sum_prime_number' do
    context 'Get the sum of n primes. Plain and simple.' do
      it 'The count of all primes less than 10 is 17' do
        expect(SumPrimeNumber.find_sum_prime_number(10)).to eq(17)
      end
      it 'should be 142913828922 for 2_000_000 prime numbers' do
        expect(SumPrimeNumber.find_sum_prime_number(2_000_000)).to eq(142913828922)
      end
    end
  end
end
