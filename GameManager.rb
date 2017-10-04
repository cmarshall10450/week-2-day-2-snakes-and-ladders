require_relative( './Board' )
require_relative( './Dice' )
require_relative( './Player' )

class GameManager

	def initialize()
		@board = Board.new(10, 10)
		@dice = Dice.new()
		@player = Player.new
		@isrunning = true
		while @isrunning
			move()
		end
	end

	def move()
		puts "Please roll dice > y/n"
		result = gets.chomp

		if result != "n"
			@player.move(@board, @dice)
		else
			@isrunning = false
		end

		if @player.position >= @board.rows * @board.cols
			puts 'You win!'
			@isrunning = false
		end
	end

end

GameManager.new()