require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
        "Welcome to the Nested Forms Lab! In order to start the lab, let's navigate to the '/new' path. You'll currently have an empty <strong>erb</strong> file, so your job is to fill in the form. Make sure the RSpec tests pass."
      end

    get '/new' do
        erb :'pirates/new'

      end

    get '/pirates' do
        @@pirates = Pirate.all
        erb :'pirates/show'
      end

    get '/ships' do
    		@@ships = Ship.all
        erb :'pirates/show'
      end

    post '/pirates' do
      # binding.pry
        @pirate = Pirate.new(params[:pirate][:name],params[:pirate][:weight], params[:pirate][:height])
        @ships = []
        params[:pirate][:ships].each do |ship|
          @ships << Ship.new(@pirate, ship[:name], ship[:type], ship[:booty])
        end

        #redirect 'pirates/show'
        erb :'pirates/show'
      end

  end

end
