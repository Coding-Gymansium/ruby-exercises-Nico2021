class Medusa
  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def unstone_victim
    unstoned = @statues.shift if @statues.count >= 4
    unstoned.stared = false unless unstoned.nil?
  end
  
  def stare(victim)
    @statues.push(victim)
    victim.stared = true if @statues.include?(victim)
    unstone_victim
  end
end

class Person
  attr_reader :name
  attr_writer :stared
  def initialize(name)
    @name = name
    @stared = false
  end

  def stoned?
    @stared
  end
end
