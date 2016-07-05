#https://projecteuler.net/problem=5
#Find the smallest number evenly divisible by the entire range
class SmallestNoRemainder
  def self.find_smallest_number_divisible_by_range(range)
    smallest_number = 1
    evenly_divided = false
    while evenly_divided == false
      1.upto(range) do |index|
        if smallest_number % index != 0
          evenly_divided = false
          break #no point in continuing after one failure
        else
          evenly_divided = true
          #If range==index, we've checked the whole range
          if range==index
            return smallest_number
          end
        end
      end
      smallest_number +=1
    end
  smallest_number
  end
end