require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do

      erb :'/root'
    end


    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      # binding.pry
      @pirate = Pirate.new(params["pirate"])
      # binding.pry
      # Ship.create(params[:pirate][:ships])
      params["pirate"]["ships"].each do |ship_info|
        Ship.new(ship_info)
      end

      @ships = Ship.all
      # binding.pry

      erb :'pirates/show'
    end
    



  end
end
