require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do

      @ships = []
      @pirates = Pirate.new(params[:pirate])
      # binding.pry
      params['pirate']['ships'].each do |ship|
        @ships << Ship.new(ship)
        # binding.pry
      end
      erb :'/pirates/show'
    end

  end
end
