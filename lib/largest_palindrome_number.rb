# https://projecteuler.net/problem=4
class LargestPalindromeNumber
  def self.find_largest_palindrome_number(digit)
    return_number = 0
    base_number = ''
    # For each digit, add a nine. 2 digits = 99, 3 = 999
    digit.times do
      base_number << '9'
    end
    base_number.to_i.downto(1) do |i|
      base_number.to_i.downto(1) do |j|
        return_number = i * j if i * j > return_number && is_palindrome(i * j)
      end
    end
    return_number
  end

  def self.is_palindrome(s)
    palindrome = true
    (0..(s.to_s.length - 1)).each do |index|
      # the char in the loop should match the other side of the string
      palindrome = false if s.to_s[index] != s.to_s[(s.to_s.length - 1) - index]
    end
    palindrome
  end
end
