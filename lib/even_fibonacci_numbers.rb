#https://projecteuler.net/problem=2
class EvenFibonacciNumbers
  def self.findFibonacciNumber(number)
    if number == 0
      return 0
    elsif number == 1
      return 1
    else
      return findFibonacciNumber(number-1) + findFibonacciNumber(number-2)
    end
  end

  def self.evenNumbersLessThan(number)
    even_terms = Array.new
    return_val = 0
    output = 0
    i = 0
    while(output < number) do
      output = EvenFibonacciNumbers.findFibonacciNumber(i)
      puts 'output is ' + output.to_s
      if output %2 ==0
        even_terms.push(output)
      end
      i+=1
    end
    even_terms.each { |term|
      return_val += term
    }
    return return_val
  end
end