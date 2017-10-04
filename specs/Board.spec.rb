require('minitest/autorun')
require_relative('../Board')
require_relative( '../Dice' )
require_relative( '../Player' )

class TestBoard < MiniTest::Test

	def setup
		@board = Board.new(4, 4)
		@player = Player.new()
		@dice = Dice.new()
	end

	def test_board_has_4_rows
		assert_equal(4, @board.rows)
	end

	def test_board_has_4_cols
		assert_equal(4, @board.cols)
	end

	def test_setup_board
		@board.setup_board
		assert_equal(2, @board.snake_and_ladders.count)
	end
end
