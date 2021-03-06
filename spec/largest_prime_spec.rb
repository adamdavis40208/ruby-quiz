require 'rspec'
require_relative '../lib/largest_prime_factor'

describe LargestPrimeFactor do
  context 'For any given number find the largest prime factor' do
    it 'should be 7 for 105' do
      expect(LargestPrimeFactor.find_largest_prime_factor(105)).to eq(7)
    end
    it 'should be 6857 for 600851475143' do
      expect(LargestPrimeFactor.find_largest_prime_factor(600_851_475_143)).to eq(6857)
    end
  end
end
