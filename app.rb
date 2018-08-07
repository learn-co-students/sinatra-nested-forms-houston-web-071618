require './environment'
require "pry"

module FormsLab
  class App < Sinatra::Base

	    # code other routes/actions here
	    get "/" do 
	    	erb :index
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
	    		# binding.pry
	    	erb :"pirates/show"
	    end



	end
end