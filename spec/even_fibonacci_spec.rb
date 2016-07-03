require 'rspec'
require_relative '../lib/even_fibonacci_numbers'

describe EvenFibonacciNumbers do
  context 'Each new term in the Fibonacci sequence is generated by adding the previous two terms ' do
    context 'the first 10 terms will be: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...' do
      it 'should be 89 for 11 rounds' do
        expect(EvenFibonacciNumbers.find_fibonacci_number(10)).to eq(55)
      end
      it 'should be 1 for 1' do
      expect(EvenFibonacciNumbers.find_fibonacci_number(1)).to eq(1)
      end
      it 'should be 5 for 5' do
        expect(EvenFibonacciNumbers.find_fibonacci_number(5)).to eq(5)
      end
    end
    context 'This should return a summation of all even terms' do
      it 'should be return 44 for terms less than 83' do
        expect(EvenFibonacciNumbers.even_numbers_less_than(83)).to eq(44)
      end
      it 'should return for terms less than 4 million' do
        expect(EvenFibonacciNumbers.even_numbers_less_than(4000000)).to eq(4613732)
      end
    end
  end
end