class Pawn
  DIRECTIONS = %w[NORTH EAST SOUTH WEST].freeze

  attr_reader :x, :y, :direction, :color

  def initialize
    @x = nil
    @y = nil
    @direction = nil
    @color = nil
  end

  def place(x, y, direction, color)
    @x, @y, @direction, @color = x, y, direction, color if valid_direction?(direction)
  end

  def move(steps = 1, board)
    return unless placed?

    new_x, new_y = calculate_new_position(steps)
    if board.valid_position?(new_x, new_y)
      @x, @y = new_x, new_y
    end
  end

  def rotate_left
    return unless placed?

    @direction = DIRECTIONS[(DIRECTIONS.index(direction) - 1) % DIRECTIONS.size]
  end

  def rotate_right
    return unless placed?

    @direction = DIRECTIONS[(DIRECTIONS.index(direction) + 1) % DIRECTIONS.size]
  end

  def report
    return unless placed?

    "#{x},#{y},#{direction},#{color}"
  end

  private

  def calculate_new_position(steps)
    case direction
    when "NORTH" then [x, y + steps]
    when "EAST"  then [x + steps, y]
    when "SOUTH" then [x, y - steps]
    when "WEST"  then [x - steps, y]
    end
  end

  def valid_direction?(direction)
    DIRECTIONS.include?(direction)
  end

  def placed?
    !x.nil? && !y.nil? && !direction.nil? && !color.nil?
  end
end
