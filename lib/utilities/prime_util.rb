class PrimeUtil
  def self.prime?(number)
    (2..Math.sqrt(number)).none? { |i| number % i == 0}
  end
end
