class Centaur
  attr_reader :name, :breed
  def initialize(name, breed)
    @breed = breed
    @cranky = false
    @name = name
    @rested = true
    @sick = false
    @sleep = false
    @standing = true
    @work = 0
  end

  def cranky?
    @work >= 3 ? @cranky = true : @cranky = false;
  end
  
  def drink_potion
    if !self.standing?
      "NO!"
    elsif self.rested?
      @sick = true
    else
      @work = 0
      @rested = true
      "Gloo, Gloo, Gloo"
    end
  end
  
  def lay_down
    @standing = false
  end
  
  def laying?
    @standing == false
  end

  def rested?
    @work >= 3 ? @rested = false : @rested = true;
  end

  def run
    string = "Clop clop clop clop!!!"
    self.will_work(string)
  end

  def sick?
    @sick
  end

  def shoot
    string = "Twang!!!"
    self.will_work(string)
  end

  def sleep
    if self.standing?
      "NO!"
    else 
      @sleep
      @work = 0
    end
  end

  def stand_up
    @standing = true
  end

  def standing?
    @standing
  end

  def will_work(string)
    if self.cranky? || self.laying?
      "NO!"
    else 
      @work += 1
      string
    end
  end
end