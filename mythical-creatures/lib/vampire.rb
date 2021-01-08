class Vampire
  attr_reader :name, :pet, :drink
  def initialize(name, pet='bat')
    @name = name
    @pet = pet
    @drink = drink
  end

  def thirsty?
    true unless drink
  end
  def drink
    true
  end
end