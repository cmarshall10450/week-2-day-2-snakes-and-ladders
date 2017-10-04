require('minitest/autorun')
require_relative('../SnakeLadder')

class TestSnakeLadder < MiniTest::Test

	def setup
		@snake_ladder = SnakeLadder.new(5, 10)
	end

	def test_get_from
		assert_equal(5, @snake_ladder.from)
	end

	def test_get_to
		assert_equal(10, @snake_ladder.to)
	end

end