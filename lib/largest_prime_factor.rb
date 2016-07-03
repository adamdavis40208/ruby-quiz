#https://projecteuler.net/problem=3
class LargestPrimeFactor
  def self.find_largest_prime_factor(number)
    current_divisor=2
    largest_divisor=0
    while(number>1)
      if(number % current_divisor == 0)
        largest_divisor=current_divisor if largest_divisor<current_divisor
        number = number/largest_divisor
        current_divisor == 2
      else
        current_divisor+=1
      end
    end

    return largest_divisor
  end
end