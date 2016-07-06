class LargestAdjacentDigitProduct
  def self.find_largest_product_in_range(input,range)
    raise 'Range should be smaller than input' unless input.to_s.length > range.to_s.length
    largest_product = 0
    #Grab a chunk of the input, length of range. Find the product and return the largest one.
    0.upto(input.to_s.length) do |i|
      input_slice = input.to_s.byteslice(i,range).to_s
      digit_array = input_slice.scan(/\d/).map!{|n| n.to_i}
      product = digit_array.inject(:*)
      largest_product = product if largest_product.to_i<product.to_i
    end
    largest_product
  end
end