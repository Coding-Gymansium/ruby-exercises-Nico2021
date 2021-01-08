class Wizard
  attr_reader :name
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @fatigue = 0
  end

  def bearded?
    @bearded
  end

  def incantation(words)
    "sudo #{words}"
  end

  def rested?
    @fatigue < 3
  end

  def cast
    @fatigue += 1
    "MAGIC MISSILE!"
  end
end
