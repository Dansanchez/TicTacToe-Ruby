
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


 	def  get_keyboard_data
   	keyboard_data = gets.chomp
 	end

	def make_move(fil,col,turn)
		@tic_tac_toe_board.make_move(fil,col,turn)
	end

  def is_move_ok?(fil,col)
		@tic_tac_toe_board.is_move_ok?(fil,col)
	end

	def ganador(row,col,turn)
		@tic_tac_toe_board.is_there_a_winner_in_game?(row,col,turn)
	end
end


	menu = TicTacToeMenu.new
	menu.print_board_matrix
	player_turn = 1
	while true do
		row = menu.get_keyboard_data.to_i
		column = menu.get_keyboard_data.to_i
		if menu.is_move_ok?(row,column) == true
			menu.make_move(row,column,player_turn)
			if menu.ganador(row,column,player_turn) == true
				puts "juego terminado"				
				break
			end
		end
		if player_turn == 1
			player_turn +=1
		else
			player_turn -=1
		end
		menu.print_board_matrix
	end
 

