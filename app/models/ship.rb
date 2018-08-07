class Ship

@@all = []
attr_accessor :name, :type, :booty

  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
    @@all.push(self)
  end

  def self.all
    return @@all
  end

  def self.clear
    @@all = []
    return @@all
  end
end
