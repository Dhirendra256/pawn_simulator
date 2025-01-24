require_relative "./lib/pawn_simulator"

# Main function to run the Pawn Simulator
def main
  simulator = PawnSimulator.new

  puts "Welcome to the Pawn Simulator!"
  puts "Enter commands (e.g., PLACE X,Y,F,C, MOVE X, LEFT, RIGHT, REPORT). Type 'EXIT' to quit."
  puts "-" * 50

  loop do
    print "Command: "
    input = gets.chomp

    break if input.strip.upcase == "EXIT"

    begin
      simulator.execute(input)
    rescue StandardError => e
      puts "Error: #{e.message}"
    end
  end

  puts "Goodbye!"
end

# Run the simulator if executed directly
main if __FILE__ == $PROGRAM_NAME
