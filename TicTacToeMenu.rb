
require_relative 'TicTacToeBoard.rb'

class TicTacToeMenu


 	def initialize
 	  @tic_tac_toe_board = TicTacToeBoard.new
 	end

  
 	def print_board_matrix
   	 for row_board in (0..2)
     	 for column_board in (0..2)
     	   print @tic_tac_toe_board.board_matrix[row_board][column_board]
    	  end
    	puts ""
  	  end
 	end


 	def  get_row_keyboard_data
   	row = gets.chomp
 	end

 	def  get_column_keyboard_data
   	row = gets.chomp
 	end

	def prueba(fil,col)
		@tic_tac_toe_board.make_move_player_1(fil,col)
	end

end


menu = TicTacToeMenu.new
menu.print_board_matrix
menu.prueba(menu.get_row_keyboard_data.to_i,menu.get_column_keyboard_data.to_i)

menu.print_board_matrix





