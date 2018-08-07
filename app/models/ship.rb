class Ship

    ALL = [] 

    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]
        ALL << self 
    end 

    def self.all
        ALL 
    end 

    def self.clear
        ALL.clear 
    end 

    def crew
        Pirate.all.select do |pirate_hash|
            pirate_hash.ship == self 
        end 
    end 

end