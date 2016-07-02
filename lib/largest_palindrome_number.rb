#https://projecteuler.net/problem=4
class LargestPalindromeNumber

  def self.findLargestPalindromeNumber(digit)
    returnNumber = 0
    baseNumber = ''
    #For each digit, add a nine. 2 digits = 99, 3 = 999
    for i in 1..digit
      baseNumber << '9'
    end
    baseNumber.to_i.downto(1) { |i|
      baseNumber.to_i.downto(1) { |j|
      if i * j > returnNumber && isPalindrome(i*j)
        returnNumber = i*j
      end
      }
    }
    return returnNumber
  end

  def self.isPalindrome(s)
    palindrome = true
    (0..(s.to_s.length-1)).each do |index|
      #the char in the loop should match the other side of the string
      if(s.to_s[index]!=s.to_s[(s.to_s.length-1)-index])
        palindrome = false
      end
    end
    return palindrome
  end
end