class WelcomeController < ApplicationController
  def index

  end
  def result
  	@search = params[:search]
	  	@places = HTTParty.get("http://localhost:3000")
	  	#binding.pry
		@hash = Gmaps4rails.build_markers(@places) do |place, marker|
		marker.lat place['latitude']
		marker.lng place['longitude']
		end
  	end
end
