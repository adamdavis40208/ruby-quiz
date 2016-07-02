#https://projecteuler.net/problem=3
class LargestPrimeFactor
  def self.findLargestPrimeFactor(number)
    currentDivisor=2
    largestDivisor=0
    while(number>1)
      if(number % currentDivisor == 0)
        largestDivisor=currentDivisor if largestDivisor<currentDivisor
        number = number/largestDivisor
        currentDivisor == 2
      else
        currentDivisor+=1
      end
    end

    return largestDivisor
  end
end