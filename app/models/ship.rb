class Ship

  @@all = []

  def initialize
    @name
    @type
    @booty
    @@all << self
  end

  def self.all
    @@all 
  end

  def self.clear
    self.all = []
  end

end
