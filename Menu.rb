
require_relative 'BoardTicTacToe'

class Menu


 def initialize
   @tic_tac_toe_board = BoardTicTacToe.new
 end

  
 def print_board_matrix
    for row_board in (0..2)
      for column_board in (0..2)
        print @tic_tac_toe_board.board_matrix[row_board][column_board]
      end
    puts ""
    end
	 end


end


menu = Menu.new

	Menu.print_board_matrix






