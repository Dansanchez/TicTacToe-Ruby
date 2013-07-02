
#CONSTANTS
TIC_TAC_TOE_BOARD_SIZE = 3
EMPTY_BOARD_SQUARE = "|___|"
MARK_PLAYER_1 = "|_X_|"
MARK_PLAYER_2 = "|_O_|"
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

end


 
































