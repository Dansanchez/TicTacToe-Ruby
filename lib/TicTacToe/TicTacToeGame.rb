
require_relative 'TicTacToeBoard.rb'

#CONSTANTS
WELCOME_MESSAGE = "=== Welcome Tic-Tac-Toe Game ==="
PLAYER_1_MESSAGE = "Player 1 mark: X"
PLAYER_2_MESSAGE = "Player 2 mark: O"
INSTRUCTIONS_MESSAGE = "You must choose numbers between 1 and 3 to make a mark in the board, player 1 starts the game"
WARNING_MESSAGE_TRY_AGAIN = "\nInvalid move, try again"
GAME_OVER_MESSAGE = "\nGame Over"


class TicTacToeGame


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
		puts ""
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
			current_row_mark = get_keyboard_row  
			current_column_mark = get_keyboard_column
			if @tic_tac_toe_board.is_move_ok?(current_row_mark,current_column_mark) == true
				@tic_tac_toe_board.make_move(current_row_mark,current_column_mark)
				print_board_matrix
				@tic_tac_toe_board.set_current_player_mark	
				@game_over =  @tic_tac_toe_board.is_there_a_winner_in_game?(current_row_mark, current_column_mark)
				@tic_tac_toe_board.change_current_player_turn	
				print "\nPlayer's ",@tic_tac_toe_board.current_player_turn," turn","\n"
			else
				puts WARNING_MESSAGE_TRY_AGAIN
			end
		end
		puts GAME_OVER_MESSAGE
	end


 	def  get_keyboard_row
		print "Insert row: "
   	keyboard_data = gets.chomp
		keyboard_data.to_i
 	end
 	
	def  get_keyboard_column
		print "Insert column: "
   	keyboard_data = gets.chomp
		keyboard_data.to_i
 	end

end


	menu = TicTacToeGame.new
	menu.play_TicTacToe_game
	
	
