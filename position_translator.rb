require 'colorize'
require 'pry'




class PositionTanslator
	
	def translate_position position_string
		row_position = get_position_case position_string[0], "letter"
		column_position = get_position_case position_string[1], "number"
		translated_position = row_position.to_s << column_position.to_s

	end

	def get_position_case value, letter_or_number
		counter = get_comparison_matrix letter_or_number
		case value
		when counter[0].to_s
			0
		when counter[1].to_s
			1
		when counter[2].to_s
			2
		when counter[3].to_s
			3
		when counter[4].to_s
			4
		when counter[5].to_s
			5
		when counter[6].to_s
			6
		when counter[7].to_s
			7
		end

	end

	def get_comparison_matrix type
		letters = ["a", "b", "c", "d", "e", "f", "g", "h"]
		numbers = [1,2,3,4,5,6,7,8]
		
		if type == "letter"
			letters
		else
			numbers	
		end
	end
end



