class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect
  def initialize(name, home='Beyond the Wall', size='Massive')
    @home = home 
    @hunting = true
    @name = name
    @size = size 
    @starks_to_protect = []
  end

  def hunts_white_walkers?
    @starks_to_protect.empty? ? @hunting : @hunting = false
  end

  def leaves(stark)
    @starks_to_protect.delete(stark)
    stark.safe = false
    stark
  end

  def protects(stark)
    stark.location == self.home && @starks_to_protect.push(stark) unless self.starks_to_protect.count == 2
    stark.safe = true
  end
end

class Stark
  attr_reader :name, :location
  attr_accessor :safe
  def initialize(name, location='Winterfell')
    @name = name
    @location = location
    @safe = false
  end

  def safe?
    @safe
  end

  def house_words
    mottos = {
      "Arya" => "The North Remembers",
      "Sansa" => "Winter is Coming",
      "John" => "Winter is Coming"
    }
    mottos.find {|stark, motto| return motto if self.name == stark }
    
  end
end
