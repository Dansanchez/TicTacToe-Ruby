
#CONSTANTS
TIC_TAC_TOE_BOARD_SIZE = 3
EMPTY_BOARD_SQUARE = 0
MARK_PLAYER_1 = 1
MARK_PLAYER_2 = 2
INVALID_MOVE = "Invalid move, try again"
 

class TicTacToeBoard

 attr_accessor :board_matrix

 def initialize
   @board_matrix = [[EMPTY_BOARD_SQUARE,EMPTY_BOARD_SQUARE,EMPTY_BOARD_SQUARE],
	 	    						[EMPTY_BOARD_SQUARE,EMPTY_BOARD_SQUARE,EMPTY_BOARD_SQUARE],
		    						[EMPTY_BOARD_SQUARE,EMPTY_BOARD_SQUARE,EMPTY_BOARD_SQUARE]]
 end


 	def make_move(row, column,player_turn)
   	if player_turn == 1
			@board_matrix[row][column]= MARK_PLAYER_1
		else 
			@board_matrix[row][column]= MARK_PLAYER_2
		end
 	end


	def is_move_ok?(row, column)
  	if is_not_move_out_of_bound?(row, column) and is_square_empty(row, column)
			true
 		else
			false
	end 


 	def is_not_move_out_of_bound?(row, column)
  	if row    < TIC_TAC_TOE_BOARD_SIZE and row    >= 0 and
       column < TIC_TAC_TOE_BOARD_SIZE and column >= 0
			 true		
		else
       false
 	  end
	end


 	def is_square_empty?(row,column)
 		return true if @board_matrix[row][column]== EMPTY_BOARD_SQUARE
  end  		 


	def is_there_a_winner_in_game?()
		if()
		else
		end
	end

	def is_there_winner_move_in_rows?(player_turn)
		counter_row_marks_player = 0
		for row_board in (0..2)
			for column_board in (0..2)
				if @board_matrix[row_board][column_board]== player_turn
					counter_row_marks_player+=1
					is_there_winner?(counter_row_marks_player)				
				end							
			end
			counter_row_marks_player = 0
		end
	end

	
	def is_there_winner_move_in_columns?
	end

  def is_ther_winner_move_in_diagonal?
	end


	def is_there_winner?(counter_winner_marks)
		if counter_winner_marks == TIC_TAC_TOE_BOARD_SIZE
			true
			break
		else
			false
		end
	end
 
































