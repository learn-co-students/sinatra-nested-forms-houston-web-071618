require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'root'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      pirate_info = params['pirate']
      name = pirate_info['name']
      weight  = pirate_info['weight']
      height = pirate_info['height']
      @pirate = Pirate.new(name, weight, height)
      
      pirate_info[:ships].each do |ship|
        name = ship['name']
        type = ship['type']
        booty = ship['booty']
        Ship.new(name, type, booty)
      end
        @ships = Ship.all
      
      erb :'pirates/show'
    end
  end
end
