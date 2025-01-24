# Pawn Simulator

The **Pawn Simulator** is a simulation of a pawn moving on a chessboard. It follows standard movement rules and ensures that the pawn does not fall off the board.

---

## Features

1. The pawn can:
   - Move 1 or 2 squares forward initially and 1 square subsequently.
   - Rotate 90 degrees (left or right).
   - Report its current position, facing direction, and color.

2. The simulator accepts commands:
   - `PLACE X,Y,F,C`: Places the pawn at `(X, Y)` facing `F` (NORTH, SOUTH, EAST, WEST) with color `C` (WHITE, BLACK).
   - `MOVE X`: Moves the pawn forward by `X` steps.
   - `LEFT`/`RIGHT`: Rotates the pawn left or right.
   - `REPORT`: Outputs the current state of the pawn.
   - Invalid commands are ignored until a valid `PLACE` command is executed.

3. Prevents the pawn from falling off the board.

---

## Installation

1. Clone the repository:
   ```bash
   cd pawn-simulator
