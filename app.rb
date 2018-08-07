require "./environment"

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get "/new" do
      erb :"pirates/new"
    end

    get "/" do
      erb :"index"
    end

    # get "/index" do
    #   erb :"pirates/index"
    # end

    post "/pirates" do
      @pirate = Pirate.new(params[:pirate])

      @ship = []

      params["pirate"]["ships"].each do |ship|
        @ship << Ship.new(ship)
      end

      erb :'pirates/show'
    end
  end
end
