require 'pascals_triangle.rb'

describe PascalsTriangle do

  before {@triangle = PascalsTriangle.new(5)}

  context 'when initializing the triangle' do
    it 'has a depth' do
      expect(@triangle.depth).to eq(5)
    end

    it 'has same rows as depth' do
      expect(@triangle.rows.count).to eq(5)
    end

    it 'has rows with length same as depth' do
      expect(@triangle.rows[4].count).to eq(5) 
    end

    it 'has rows[3] with correct values' do
     expect(@triangle.rows[2]).to eq([1,2,1])
    end

    it 'has rows[4] with correct values' do
     expect(@triangle.rows[4]).to eq([1, 4, 6, 4, 1])
    end

    it 'prints a linear array with the value of all rows' do
      expect(@triangle.print).to eq([1,1,1,1,2,1,1,3,3,1,1,4,6,4,1])
    end
  end
end
