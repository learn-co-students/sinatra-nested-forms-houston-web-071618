class Pirate

	@@all = []

	def self.all 
	@@all 
	end 

	attr_reader :name, :weight, :height

	def initialize(name, weight, height)
		@name = name
		@weight = weight
		@height = height
		@@all << self 
	end 

end