require 'colorize'
require 'pry'




class MoveManager
	attr_accessor :validation_text
	def initialize
		@validation_text = ""
	end
	def read_movements
		movements = FileManager.new.read_movements_file
		movements.map{|string| string.split}
	end

	def read_each_movement movements_array
		
		translated_movements_array = []
		movements_array.map do |movement|
			initial_position = PositionTanslator.new.translate_position movement[0]
			final_position = PositionTanslator.new.translate_position movement[1]
			position_array = Array.new()
			position_array << initial_position << final_position
			translated_movements_array << position_array
		end	
		translated_movements_array
	end

	def validate_movements movements_array, board
		@board_to_compare = board.reverse
		movements_array.each do |movement|
			check_square movement 
			determine_piece	@piece_initial 	
		end

	end

	def check_square position
	 	row = position[0][0].to_i
		column = position[0][1].to_i

		square_info = @board_to_compare[row][column]
		if square_info[1] == "-"
			@validation_text += "No piece in the square\n" 
		else 
			@validation_text += "There is a piece in here\n"
			#determine_piece square_info[1]
			
		end
		
		@piece_initial = square_info[1]
	 	
	end

	def determine_piece piece_initial
		binding.pry
		case piece_initial

		 when "R"
		 	 
		 when "P"
		 when "B"
		 when "N"
		 when "Q"
		 when "K"	
		 end
	end

	def print_validation string
		PrintManager.new.write_legality_file
		
	end
end