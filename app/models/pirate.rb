class Pirate

  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@all << self
  end

  def ships
    Ship.all.select do |ship|
      ship.pirate == self
    end
  end 

  def self.all
    @@all
  end

end
