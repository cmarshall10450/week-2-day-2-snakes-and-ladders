class Player

  attr_reader :position

  def initialize()
    @position = 0
  end

  def roll(dice)
    return dice.roll
  end

	def move(board, dice)
		roll = self.roll(dice)
		@position += roll

		@position = board.check_player_position(@position)
	end

end
