require 'minitest/autorun'
require 'minitest/pride'
require './followcostRep.rb'

class TestFollowCostRep < MiniTest::Unit::TestCase
  def setup
    @fc = FollowCost.new
  end

  def test_can_connect_to_twitter
    assert @fc
  end

  # * Take a username and calculate their milliscoble rating
  def test_can_make_milliscobel_rating
    mockUser = MiniTest::Mock.new
    @fc.rating("KeightyLeonard")

  end


end
