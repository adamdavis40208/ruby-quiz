#https://projecteuler.net/problem=7
require_relative '../lib/utilities/prime_util'
class NthPrimeNumber
  def self.find_nth_prime_number(nth)
    prime = []
    prime_start=2
    while prime.length<nth
      prime.push(prime_start) if PrimeUtil.prime?(prime_start)
      prime_start+=1
    end
    prime[nth-1]
  end
end