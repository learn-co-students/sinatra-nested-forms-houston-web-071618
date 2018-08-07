require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    get '/pirates' do
      @pirates = Pirate.all
      erb :'pirates/index'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])

      @ships = params[:pirate][:ships].map do |ship|
        Ship.new(ship[:name], ship[:type], ship[:booty])
      end

      erb :'/pirates/show'
    end
    # code other routes/actions here
  end
end
