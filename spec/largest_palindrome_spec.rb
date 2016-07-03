require 'rspec'
require_relative '../lib/largest_palindrome_number'

describe LargestPalindromeNumber do
  context 'For any given number find the largest prime factor' do
    it 'for 2 digits, it is 9009 = 91 × 99.' do
      expect(LargestPalindromeNumber.find_largest_palindrome_number(2)).to eq(9009)
    end
    it 'for 3 digits it is biiig' do
      expect(LargestPalindromeNumber.find_largest_palindrome_number(3)).to eq(906_609)
    end
  end

  context 'This finds palindromes' do
    context 'it should work with numbers or string' do
      [
        [9009, true],
        ['foo', false],
        ['9009', true]
      ].each do |v1, expected|
        it "expecting #{expected} with #{v1}" do
          expect(LargestPalindromeNumber.is_palindrome(v1)).to equal(expected)
        end
      end
    end
  end
end
