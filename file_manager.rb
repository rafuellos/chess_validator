require 'colorize'
require 'pry'


class FileManager
	def read_movements_file 
		movements_file = "simple_movements.txt"
		IO.readlines movements_file
	end

	def read_initial_board_file
		initial_board_file = "initial_board.txt"
		IO.readlines initial_board_file
	end

	def write_legality_file text
		legality_file = "checked_positions.txt"
		IO.write legality_file, text
	end

end


