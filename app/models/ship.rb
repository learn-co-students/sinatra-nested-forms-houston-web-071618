class Ship

  attr_reader :pirate 
  attr_accessor :name, :type, :booty
  @@all = []

  def initialize(pirate, name, type, booty)
    @pirate = pirate
    @name = name
    @type = type
    @booty = booty
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end
