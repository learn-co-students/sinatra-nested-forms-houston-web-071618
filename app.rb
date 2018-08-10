require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do

      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = params[:pirate]
      @ship1 = params[:ships[0]]
      @ship2 = params[:ships[1]]
      erb :"pirates/show"
    end

  end
end
