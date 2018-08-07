require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      pirate_info = params['pirate']
      name = pirate_info['name']
      height = pirate_info['weight']
      weight = pirate_info['height']

      pirate_info['ships'].each do |ship_hash|
        name = ship_hash['name']
        type = ship_hash['type']
        booty = ship_hash['booty']
        Ship.new(name, type, booty)
      end

      @pirate = Pirate.new(name, weight, height)
      @ships = Ship.all

      erb :'pirates/show'
    end
  end
end
