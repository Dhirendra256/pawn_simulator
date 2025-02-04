class Board
  attr_reader :width, :height

  def initialize(width = 8, height = 8)
    @width = width
    @height = height
  end

  def valid_position?(x, y)
    x.between?(0, width - 1) && y.between?(0, height - 1)
  end
end
