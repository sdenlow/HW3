class PlacesController < ApplicationController
def index
      # find all places rows
    @places = Place.all
end

  def show
    # find a Places
    @place = Place.find_by({"id" => params["id"]})
    # find all entries for this place
    @entries = Entry.where({"place_id" => @place["id"]})

    # render companies/show view with details about Place
  end

  def new
    # render view with new Place form
  end

  def create
    # start with a new Place
    place = Place.new

    # assign user-entered form data to Company's columns
    place["name"] = params["name"]

    # save Company row
    place.save

    # redirect user
    redirect_to "/places"
  end

end
