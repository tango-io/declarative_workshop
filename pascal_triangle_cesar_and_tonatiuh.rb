require 'pry'

module PascalTriangleRowBuilder
  extend self

  def call(previous_row)
    current_row = [1]

    (1...previous_row.length).each do |column_index|
      current_row << (
        previous_row[column_index - 1] + previous_row[column_index]
      )
    end

    current_row.flatten << 1
  end
end

module PascalTriangleBuilder
  extend self

  attr_accessor :triangle

  def call(amount_of_rows)
    return build_simple_triangle(amount_of_rows) if amount_of_rows <= 2
    @triangle = base_of_complex_triangle

    (2...amount_of_rows).each do |row_index|
      previous_row = @triangle[row_index - 1]

      triangle << PascalTriangleRowBuilder.(previous_row)
    end

    triangle.flatten
  end

  private

  def build_simple_triangle(amount_of_rows)
    rows = { '0' => [], '1' => [1], '2' => [1,1,1] }
    rows[amount_of_rows.to_s]
  end

  def base_of_complex_triangle
    [[1],[1,1]]
  end
end

describe PascalTriangleBuilder do
  context 'when triangle number of rows is 1' do
    it 'returns the right array' do
      expect(PascalTriangleBuilder.(1)).to eq([1])
    end
  end

  context 'when triangle number of rows is 2' do
    it 'returns the right array' do
      expect(PascalTriangleBuilder.(2)).to eq([1,1,1])
    end
  end

  context 'when triangle number of rows is 3' do
    it 'returns the right array' do
      expect(PascalTriangleBuilder.(3)).to eq([1,1,1,1,2,1])
    end
  end

  context 'when triangle number of rows is 4' do
    it 'returns the right array' do
      expect(PascalTriangleBuilder.(4)).to eq([1,1,1,1,2,1,1,3,3,1])
    end
  end
end
