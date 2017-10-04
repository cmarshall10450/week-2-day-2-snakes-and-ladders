require('minitest/autorun')
require_relative('../Dice')

class TestDice < MiniTest::Test

	def setup
		@dice = Dice.new()
	end

	def test_has_6_sides
		assert_equal(6, @dice.sides)
	end

	# def test_dice_rolls_random_number_between_1_and_6
	# 	result = @dice.roll
	# 	assert_equal((1..6), result)
	# end

end