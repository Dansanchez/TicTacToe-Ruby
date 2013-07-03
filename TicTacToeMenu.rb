
require_relative 'TicTacToeBoard.rb'

#CONSTANTS
WELCOME_MESSAGE = "=== Welcome Tic-Tac-Toe Game ==="
PLAYER_1_MESSAGE = "Player 1 mark: X"
PLAYER_2_MESSAGE = "Player 2 mark: O"
INSTRUCTIONS_MESSAGE = "You must choose numbers between 0 and 2 to make a mark in the board"
FINISH_MESSAGE = "GAME OVER"
WARNING_MESSAGE_TRY_AGAIN = "Invalid move, try again"
GAME_OVER_MESSAGE = "Game Over"


class TicTacToeMenu


 	def initialize
 	  print_messages
		@tic_tac_toe_board = TicTacToeBoard.new
		@game_over = false
 	end


	def print_messages	
		puts WELCOME_MESSAGE
		puts PLAYER_1_MESSAGE
		puts PLAYER_2_MESSAGE
		puts INSTRUCTIONS_MESSAGE
	end
 
 
 	def print_board_matrix
   	 for row_board in (0..2)
     	 for column_board in (0..2)
     	   print @tic_tac_toe_board.board_matrix[row_board][column_board]
				end
    	puts ""
  	  end
 	end


	def play_TicTacToe_game		
		print_board_matrix
		while not @game_over do
			current_row_mark = get_keyboard_data.to_i
			current_column_mark = get_keyboard_data.to_i
			if @tic_tac_toe_board.is_move_ok?(current_row_mark,current_column_mark) == true
				@tic_tac_toe_board.make_move(current_row_mark,current_column_mark)
				print_board_matrix
				@tic_tac_toe_board.set_current_player_mark	
				@game_over =  @tic_tac_toe_board.is_there_a_winner_in_game?(current_row_mark, current_column_mark)
				@tic_tac_toe_board.change_current_player_turn
			else
				puts WARNING_MESSAGE_TRY_AGAIN
			end
		end
		puts GAME_OVER_MESSAGE
	end


 	def  get_keyboard_data
   	keyboard_data = gets.chomp
 	end

end


	menu = TicTacToeMenu.new
	menu.play_TicTacToe_game
	
	
