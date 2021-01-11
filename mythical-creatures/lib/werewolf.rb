class Werewolf
  attr_reader :name, :location, :victims
  def initialize(name, location='Planet Earth')
    @name = name;
    @location = location;
    @human = true
    @hungry = true
    @victims = []
  end

  def human?
    @human
  end

  def change!
    @human ? @human = false : @human = true
  end

  def wolf?
    @human == false
  end

  def hungry?
    @human ? !@hungry : @hungry
  end

  def eat(victim)
    @victims.push(victim) if self.wolf?
    @hungry = false
    victim.status = :dead if @victims.include?(victim)
  end
end
