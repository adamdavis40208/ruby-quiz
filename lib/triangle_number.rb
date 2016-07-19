# https://projecteuler.net/problem=12
require_relative '../lib/utilities/prime_util'
class TriangleNumber

  @current_triangle_count = 1
  @current_triangle = 0
  def self.generate_triangle_numbers
    triangle_number = 0
      1.upto(@current_triangle_count) do |num|
        triangle_number = triangle_number + num
      end
      #puts @current_triangle_count.to_s + " triangle count"
      @current_triangle_count = @current_triangle_count + 1
      @current_triangle = triangle_number
  end

  def self.euler_12(number)
    TriangleNumber.instance_variable_set(:@current_triangle_count,1)
    TriangleNumber.instance_variable_set(:@current_triangle,0)
      #Find a triangle number with 500 divisors
      found=false
      while !found
        found = true if PrimeUtil.find_all_divisors(generate_triangle_numbers) > number
      end
      @current_triangle
  end
end
