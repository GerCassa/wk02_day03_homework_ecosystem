require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < MiniTest::Test

  def setup
    fish1 = Fish.new("Rafael")
    fish2 = Fish.new("Donatello")
    fish3 = Fish.new("Michelangelo")
    fish4 = Fish.new("Leonardo")
    fish5 = Fish.new("Splinter")

    @river = River.new("Amazon", [fish1, fish2, fish3, fish4, fish5])

    @bear = Bear.new("Ursa", "Grizzly")
  end

  def test_has_name
    assert_equal("Ursa", @bear.name)
  end

  def test_has_type
    assert_equal("Grizzly", @bear.type)
  end


  def test_stomach_count
    assert_equal(0, @bear.stomach_count)
  end

  def test_bear_eat_fish
    @bear.eat_fish(@river)
    assert_equal(1, @bear.stomach_count)
    assert_equal(4, @river.how_many_fish_in_river)
  end

  def test_bear_roar
    assert_equal("The bear ROARS!", @bear.roar!(name))
  end



end
