require('minitest/autorun')
require_relative('../Dice')

class TestDice < MiniTest::Test

	def setup
		@dice = Dice.new()
	end

	def test_has_6_sides
		assert_equal(6, @dice.sides.count)
	end

	def test_dice_rolls_random_number_between_1_and_6
		result = @dice.roll
		possible_nums = [1, 2, 3, 4, 5, 6]

		assert_equal(true, possible_nums.include?(result))
	end

end