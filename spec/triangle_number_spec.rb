require 'rspec'
require_relative '../lib/triangle_number'

describe TriangleNumber do
  context 'Generate Triangle Number should make one new triangle number per call' do
    it 'should be 28 for the 7th triangle' do
      triangle_number = 0
      7.times do |num|
        triangle_number = TriangleNumber.generate_triangle_numbers
      end
      expect(triangle_number).to eq(28)
    end
  end
  context 'the euler 12 method finds a triangle number with over x many divisors' do
    it 'should be 28 for over 5 divisors' do
      expect(TriangleNumber.euler_12(5)).to eq(28)
    end
    it 'should be ? for over 500 divisors' do
      expect(TriangleNumber.euler_12(500)).to eq(76576500)
    end
  end
end
