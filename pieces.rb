require 'colorize'
require 'pry'

class Piece
	attr_accessor :color, :initial_position, :final_position
	def initialize color
		
	end
end

class Pawn < Piece
	
	def initialize color
		super
	end
end

class Knight < Piece
	
	def initialize color
		super
	end
end

class Rook < Piece
	attr_accessor :color
	def initialize color
		super
	end
end

class Bishop < Piece
	attr_accessor :color
	def initialize color
		super
	end
end

class Queen < Piece
	attr_accessor :color
	def initialize color
		super
	end
end

class Knight < Piece
	attr_accessor :color
	def initialize color
		super
	end
end
