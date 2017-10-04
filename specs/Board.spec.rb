require('minitest/autorun')
require_relative('../Board')

class TestBoard < MiniTest::Test
    
	def setup
		@board = Board.new(4, 4)
	end
	
	def test_board_has_4_rows
		assert_equal(4, @board.rows)
	end

	def test_board_has_4_cols
		assert_equal(4, @board.cols)
	end
	
	

end