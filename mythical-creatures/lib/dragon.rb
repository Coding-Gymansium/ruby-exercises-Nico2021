class Dragon
  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @meal = 0
  end

  def hungry?
    @meal < 3 && true
  end
  
  def eat
    meal += 1
  end
end