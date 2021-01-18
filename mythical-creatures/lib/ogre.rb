class Ogre
  attr_reader :name, :home, :swings, :encounter_counter
  def initialize(name, home='Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end
  def apologize(human)
    human.knocked_out = false
  end
  def encounter(human)
    human.encounter_counter += 1
    human_counter(human)
    self.swing_at(human) if human.notices_ogre?
    human.knocked_out = true if @swings == 2
  end

  def human_counter(human)
    @encounter_counter = human.encounter_counter
  end

  def swing_at(human)
    @swings += 1
  end
end

class Human
  attr_reader :name
  attr_accessor :encounter_counter, :knocked_out
  def initialize(name='Jane')
    @encounter_counter = 0
    @name = name
    @knocked_out = false
  end

  def knocked_out?
    @knocked_out
  end

  def notices_ogre?
    @encounter_counter == 3 || @encounter_counter == 6 && true
  end
end