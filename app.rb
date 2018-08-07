require "./environment"

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get "/new" do
      erb :'pirates/new'
    end

    get "/" do
      erb :root
    end

    post "/pirates" do
      @pirate = Pirate.new(params[:pirate])

      @ship = params["pirate"]["ships"].map do |ship|
        Ship.new(ship)
      end

      erb :'pirates/show'
    end
  end
end
