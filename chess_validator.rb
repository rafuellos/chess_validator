require 'colorize'
require 'pry'


require  './board.rb'
require  './pieces.rb'
require  './file_manager.rb'
require  './move_validator.rb'
require  './position_translator.rb'

#File to manage the chess validator

class ChessValidator
	def run_validator
		board = Board.new
		board.create_board
		movements_array = MoveManager.new.read_movements
		translated_array = MoveManager.new.read_each_movement movements_array
		a = MoveManager.new.validate_movements translated_array, board.board

		#binding.pry
		#write_legality_file
	end

end

ChessValidator.new.run_validator

