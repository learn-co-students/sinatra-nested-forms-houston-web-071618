class Ship
  attr_accessor :name, :type, :booty
  @@all = []

  def initialize(name, type, booty, pirate)
    @name = name
    @type = type
    @booty = booty
    @pirate = pirate
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end
