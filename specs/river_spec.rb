require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../river.rb")

class RiverTest < MiniTest::Test
  def setup
    fish1 = Fish.new("Rafael")
    fish2 = Fish.new("Donatello")
    fish3 = Fish.new("Michelangelo")
    fish4 = Fish.new("Leonardo")
    fish5 = Fish.new("Splinter")

    @river = River.new("Amazon", [fish1, fish2, fish3, fish4, fish5])

  end

  def test_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_how_many_fish_in_river
    assert_equal(5, @river.how_many_fish_in_river)
  end

  def test_fish_out
    @river.get_fish
    assert_equal(4, @river.how_many_fish_in_river)
  end

end
