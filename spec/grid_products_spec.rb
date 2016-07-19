require 'rspec'
require_relative '../lib/grid_products'

describe GridProducts do
  describe '.find_largest_product_in_grid' do
    context 'Traverse a grid. Return the largest product of numbers in a diagonal, up/down or left/right' do
      it 'The largest product for a range of 4 should be 70600674' do
        expect(GridProducts.find_largest_product_in_grid(4)).to eq(70600674)
      end
      it 'The largest product for a range of 6 should be 70600674' do
        expect(GridProducts.find_largest_product_in_grid(6)).to eq(140975907072)
      end
    end
  end
end
