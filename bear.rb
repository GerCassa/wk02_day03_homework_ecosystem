class Bear
  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_count
    @stomach.count
  end

  def eat_fish(river)
    fish = river.get_fish
    @stomach << fish
  end

  def roar!(name)
    return "The bear ROARS!"
  end

end
