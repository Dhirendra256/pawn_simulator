require_relative "board"
require_relative "pawn"

class PawnSimulator
  def initialize
    @board = Board.new
    @pawn = Pawn.new
  end

  def execute(command)
    parts = command.split
    action = parts[0]
    case action
    when "PLACE"
      x, y, direction, color = parts[1].split(",")
      @pawn.place(x.to_i, y.to_i, direction, color)
    when "MOVE"
      steps = parts[1].to_i
      @pawn.move(steps, @board)
    when "LEFT"
      @pawn.rotate_left
    when "RIGHT"
      @pawn.rotate_right
    when "REPORT"
      puts @pawn.report
    end
  end
end
