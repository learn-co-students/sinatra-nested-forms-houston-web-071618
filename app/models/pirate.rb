class Pirate
    ALL = []

    attr_accessor :ship

    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
        @ships = params[:ships]
        ALL << self 
    end

    def self.all
        ALL 
    end 

  


end 
