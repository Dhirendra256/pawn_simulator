require "board"

RSpec.describe Board do
  let(:board) { Board.new }

  it "validates positions within bounds" do
    expect(board.valid_position?(0, 0)).to eq(true)
    expect(board.valid_position?(7, 7)).to eq(true)
    expect(board.valid_position?(8, 8)).to eq(false)
    expect(board.valid_position?(-1, 0)).to eq(false)
  end
end
