class River

  attr_reader :name

  def initialize(name, fish_in_river)
    @name = name
    @fish_in_river = fish_in_river
  end

  def how_many_fish_in_river
    @fish_in_river.count
  end

  def get_fish
    @fish_in_river.pop
  end


end
