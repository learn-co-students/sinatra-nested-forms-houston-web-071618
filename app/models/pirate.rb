class Pirate

  @@all = []

  attr_reader :name, :weight, :height

  def initialize(args)
    @name = args["name"]
    @weight = args["weight"]
    @height = args["height"]

    @@all << self
  end

  # def self.all
  #   @@all
  # end

  # def self.clear
  #   @@all = []
  # end



end