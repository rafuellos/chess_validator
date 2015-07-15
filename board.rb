require 'colorize'
require 'pry'


class Board
	attr_accessor :board
	def initialize
		#@board = Array.new(8).map { |col| col = Array.new(8).fill(:empty) }
	end

	def print_board
		
		puts "This is your Chess Board"
		puts "\033[1;31;35m+-------------------------+\033[0m"
		puts "\033[1;31;35m|                         |\033[0m"
		rows = (@board.length) - 1
	  	columns = (@board[0].length) -1
		0.upto(rows) do |row|
			print "\033[1;31;35m| \033[0m"
	  		0.upto(columns) do |column|
	    		print "\033[3;34;35m#{@board[row][column]} \033[0m"
	    		end
	    	puts "\033[1;36;35m|\033[0m"
	    end
		puts "\033[1;31;35m|                         |\033[0m"
		puts "\033[1;31;35m+-------------------------+\033[0m"
	end

	def define_positions_in_board
		read_board = FileManager.new.read_initial_board_file 
		@board = read_board.map{|string| string.split}
	end

	def create_board
		define_positions_in_board
		print_board

	end
	
end
