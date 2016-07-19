class PrimeUtil
  def self.prime?(number)
    (2..Math.sqrt(number)).none? { |i| number % i == 0}
  end

  def self.find_all_divisors(number)
    divisors = 0
    1.upto(Math.sqrt(number)) do |i|
      divisors= divisors + 2 if number % i == 0
    end

    if Math.sqrt(number) * Math.sqrt(number) == number
      divisors = divisors -1
    end

    #puts divisors
    divisors
  end
end
