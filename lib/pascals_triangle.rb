class PascalsTriangle
  attr_reader :depth, :rows

  def initialize(depth)
    @depth = depth
    @rows  = Array.new(depth)
    build
    create
  end

  def print
    @rows.flatten
  end

  private
  def build
    @depth.times do |index| 
      @rows[index] = Array.new(index + 1)
    end
  end

  def create
    @depth.times do |index|
      if index < 2
        @rows[index] = Array.new(index+1, 1)
      elsif
        create_row(index)
      end
    end
  end

  def create_row(index)
    temporary_array = [1]

    @rows[index].length.times do |subindex|
      previous_row = @rows[index-1]
      break if !previous_row[subindex+1]
      temporary_array << previous_row[subindex] + previous_row[subindex+1]
    end

    temporary_array << 1
    @rows[index] = temporary_array
  end
end
