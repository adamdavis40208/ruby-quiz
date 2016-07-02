#https://projecteuler.net/problem=1
class ThreeByFive

  #Add all numbers multiples of 3 or 5
  def self.findAllNumbers(number)
      returnNum = 0
      1.upto(number)  { |i|
        if i % 3==0 || i % 5 == 0
          returnNum += i
        end
      }
    return returnNum
  end
end