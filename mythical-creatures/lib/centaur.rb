class Centaur
  attr_reader :name, :breed
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @work = 0
    @sleep = false
    @laying = false
    @rested = true
    @sick = false
  end

  def shoot
    if self.cranky? || self.laying?
      "NO!"
    else 
      @work += 1
      "Twang!!!"
    end
  end

  def run
    if self.cranky? || self.laying?
      "NO!"
    else 
      @work += 1
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    @work >= 3 ? @cranky = true : @cranky = false;
  end
  
  def standing?
    @standing
  end
  
  def sleep
    if self.standing?
      "NO!"
    else 
      @sleep
      @work = 0
    end
  end
  
  def lay_down
    @laying = true
    @standing = false
  end
  
  def laying?
    @laying == true
    @standing == false
  end
  
  def stand_up
    @standing = true
    @lay_down = false
  end

  def rested?
    @work >= 3 ? @rested = false : @rested = true;
  end

  def drink_potion
    if self.laying?
      "NO!"
    elsif self.rested?
      @sick = true
    else
      @work = 0
      @rested = true
      "Gloo, Gloo, Gloo"
    end
  end

  def sick?
    @sick
  end
end