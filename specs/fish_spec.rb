require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Tomas")
  end

  def test_has_name
    assert_equal("Tomas", @fish.fish_name)
  end

end
