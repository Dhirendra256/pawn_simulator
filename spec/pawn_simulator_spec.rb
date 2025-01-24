require "pawn_simulator"

RSpec.describe PawnSimulator do
  let(:simulator) { PawnSimulator.new }

  it "processes a sequence of commands" do
    simulator.execute("PLACE 0,0,NORTH,WHITE")
    simulator.execute("MOVE 1")
    simulator.execute("RIGHT")
    simulator.execute("MOVE 1")
    expect { simulator.execute("REPORT") }.to output("1,1,EAST,WHITE\n").to_stdout
  end
end
