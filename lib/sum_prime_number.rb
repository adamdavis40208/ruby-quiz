#https://projecteuler.net/problem=10
require_relative '../lib/utilities/prime_util'
class SumPrimeNumber
  def self.find_sum_prime_number(nth)
    primes = []
    prime_start=2
    while prime_start<nth
      primes.push(prime_start) if PrimeUtil.prime?(prime_start)
      prime_start+=1
    end
    primes.inject(:+)
  end
end