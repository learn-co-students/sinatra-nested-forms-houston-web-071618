class Pirate
  @@all = []
  attr_reader :name, :weight, :height

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @@all.push(self)
  end

  def self.all
    return @@all
  end


end
