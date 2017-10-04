require_relative('./SnakeLadder')

class Board

	attr_reader :rows, :cols, :snake_and_ladders

	def initialize(rows, cols)
		@rows = rows
		@cols= cols
		@snake_and_ladders = []
		setup_board()
	end

	def setup_board()
		for i in (0..10)
			from = rand(rows * cols)
			to = rand(rows * cols)

			@snake_and_ladders.push(SnakeLadder.new(from , to))
		end
	end

	def check_player_position(position)
		puts 'Position ' + position.to_s
		for snake_ladder in @snake_and_ladders
			if position == snake_ladder.from
				if position > snake_ladder.to
					puts "You have hit a snake."
				else
					puts "You have hit a ladder."
				end
				puts "Setting player position to: #{snake_ladder.to}"
				return snake_ladder.to
			end
		end

		puts position
		return position
	 end
end
