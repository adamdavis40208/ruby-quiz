# https://projecteuler.net/problem=1
class ThreeByFive
  # Add all numbers multiples of 3 or 5
  def self.find_all_numbers(number)
    return_num = 0
    1.upto(number) do |i|
      return_num += i if i % 3 == 0 || i % 5 == 0
    end
    return_num
  end
end
