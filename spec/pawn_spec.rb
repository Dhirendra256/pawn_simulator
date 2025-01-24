require "pawn"
require "board"

RSpec.describe Pawn do
  let(:board) { Board.new }
  let(:pawn) { Pawn.new }

  it "places the pawn on the board" do
    pawn.place(0, 0, "NORTH", "WHITE")
    expect(pawn.report).to eq("0,0,NORTH,WHITE")
  end

  it "moves the pawn" do
    pawn.place(0, 0, "NORTH", "WHITE")
    pawn.move(1, board)
    expect(pawn.report).to eq("0,1,NORTH,WHITE")
  end

  it "rotates the pawn left and right" do
    pawn.place(0, 0, "NORTH", "WHITE")
    pawn.rotate_left
    expect(pawn.report).to eq("0,0,WEST,WHITE")

    pawn.rotate_right
    expect(pawn.report).to eq("0,0,NORTH,WHITE")
  end
end
