require './environment'
require "pry"

module FormsLab
  class App < Sinatra::Base

	    # code other routes/actions here
	    get "/" do 
	     # erb :'pirates/index'
	    	"Welcome to the Nested Forms Lab! let's navigate to the '/new'"
	    end

	    get "/new" do 
	    	erb :"pirates/new"
	    end


	    post "/pirates" do 
	    	@pirate = Pirate.new(params[:pirate])
	    	
	    	@ships = params[:pirate][:ships].each do |ship|
	    		Ship.new(ship)
	    	end
	    		@ship1 = Ship.all[0]
	    		@ship2 = Ship.all[1]

	    	erb :"pirates/show"
	    end
	end
end