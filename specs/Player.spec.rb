require_relative ( '../Dice.rb' )
require_relative ( '../Player.rb' )
require( 'minitest/autorun' )
require( 'minitest/rg' )

class TestPlayer < MiniTest::Test

  def setup
    @player = Player.new()
    @dice = Dice.new()
  end

  def test_roll
    result = @player.roll(@dice)
		possible_nums = [1, 2, 3, 4, 5, 6]

		assert_equal(true, possible_nums.include?(result))
  end
end
