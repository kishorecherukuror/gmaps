class WelcomeController < ApplicationController
  def index

  end
  def result
  	@search = params[:search]
	  	@places = HTTParty.get("http://localhost:3000")
		@hash = Gmaps4rails.build_markers(@places["locations"]) do |place, marker|
		marker.lat place['latitudeE7'].to_f/10000000
		marker.lng place['longitudeE7'].to_f/10000000
		end
		binding.pry
  	end
end