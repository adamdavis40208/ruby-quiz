#https://projecteuler.net/problem=1
class ThreeByFive

  #Add all numbers multiples of 3 or 5
  def self.find_all_numbers(number)
      return_num = 0
      1.upto(number)  { |i|
        if i % 3==0 || i % 5 == 0
          return_num += i
        end
      }
    return return_num
  end
end