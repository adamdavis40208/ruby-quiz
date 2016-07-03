# https://projecteuler.net/problem=2
class EvenFibonacciNumbers
  def self.find_fibonacci_number(number)
    if number == 0
      return 0
    elsif number == 1
      return 1
    else
      return find_fibonacci_number(number - 1) + find_fibonacci_number(number - 2)
    end
  end

  def self.even_numbers_less_than(number)
    even_terms = []
    return_val = 0
    output = 0
    i = 0
    while output < number
      output = EvenFibonacciNumbers.find_fibonacci_number(i)
      puts 'output is ' + output.to_s
      even_terms.push(output) if output.even?
      i += 1
    end
    even_terms.each do |term|
      return_val += term
    end
    return_val
  end
end
