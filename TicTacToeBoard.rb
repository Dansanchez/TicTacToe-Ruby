
#CONSTANTS
TIC_TAC_TOE_BOARD_SIZE = 3
WINNER_AMOUNT = 3
BOARD_EMPTY_SQUARE = "|___|"
MARK_PLAYER_1 = "|_X_|"
MARK_PLAYER_2 = "|_O_|"
INVALID_MOVE = "Invalid move, try again"
 

class TicTacToeBoard

 attr_accessor :board_matrix,:current_player_turn

	def initialize
  	@board_matrix = [[BOARD_EMPTY_SQUARE,BOARD_EMPTY_SQUARE,BOARD_EMPTY_SQUARE],
	 	    						[BOARD_EMPTY_SQUARE,BOARD_EMPTY_SQUARE,BOARD_EMPTY_SQUARE],
		    						[BOARD_EMPTY_SQUARE,BOARD_EMPTY_SQUARE,BOARD_EMPTY_SQUARE]]
 		@current_player_turn = 1
		@current_player_mark = MARK_PLAYER_1 
	end


 	def make_move(row, column)
   	if @current_player_turn == 1
			@board_matrix[row][column]= MARK_PLAYER_1
		else 
			@board_matrix[row][column]= MARK_PLAYER_2
		end
 	end


	def change_current_player_turn
		if @current_player_turn == 1
			@current_player_turn = 2
		else
			@current_player_turn = 1
		end 	
	end


	def is_move_ok?(row, column)
 		is_not_move_out_of_bound?(row, column) and is_square_empty?(row, column) 
	end


 	def is_not_move_out_of_bound?(row, column)
  	return true	if row    < TIC_TAC_TOE_BOARD_SIZE and row    >= 0 and
       						 column < TIC_TAC_TOE_BOARD_SIZE and column >= 0
	end


 	def is_square_empty?(row,column)
 		return true if @board_matrix[row][column]== BOARD_EMPTY_SQUARE
  end  		 


	def is_there_a_winner_in_game?(row, column)
		is_there_winner_move_in_row?(row, @current_player_mark)         ||
 	  is_there_winner_move_in_column?(column, @current_player_mark)   ||
    is_there_winner_move_in_diagonal?(@current_player_mark)         ||
		is_there_winner_move_in_inverse_diagonal?(@current_player_mark)   	
	end


	def set_current_player_mark
		if @current_player_turn == 1
			@current_player_mark = MARK_PLAYER_1
		else
			@current_player_mark = MARK_PLAYER_2
		end
	end


	def is_there_winner_move_in_row?(row, current_player_mark)
		counter_row_marks = 0
		for column_board in (0..2)
				if @board_matrix[row][column_board]== current_player_mark
					counter_row_marks +=1
					winner_value = is_there_a_winner?(counter_row_marks)				
				end							
		end
		return winner_value
	end

	
	def is_there_winner_move_in_column?(column,current_player_mark)
		column_marks_counter = 0
		for row_board in (0..2)
			if @board_matrix[row_board][column] == current_player_mark
				column_marks_counter +=1
				winner_value = is_there_a_winner?(column_marks_counter)
			end
		end
		return winner_value
	end


  def is_there_winner_move_in_diagonal?(current_player_mark)
		diagonal_marks_counter = 0
		for diagonal_board in (0..2)
			if @board_matrix[diagonal_board][diagonal_board] == current_player_mark	
				diagonal_marks_counter +=1
				winner_value = is_there_a_winner?(diagonal_marks_counter)
			end
		end		
		return winner_value
	end


	def is_there_winner_move_in_inverse_diagonal?(current_player_mark)
		inverse_diagonal_marks_counter = 0
		row_counter = 0 
		column_counter = 2
		while row_counter < 3 do	
			if @board_matrix[row_counter][column_counter] == current_player_mark 
				inverse_diagonal_marks_counter +=1
				winner_value = is_there_a_winner?(inverse_diagonal_marks_counter)
			end
			row_counter +=1
			column_counter -=1
		end
		return winner_value	
	end


	def is_there_a_winner?(counter_winner_marks)
		return true if counter_winner_marks == WINNER_AMOUNT
	end

end
