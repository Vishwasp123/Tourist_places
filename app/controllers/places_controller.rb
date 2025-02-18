class PlacesController < ApplicationController
  def index
    @places = Place.all
    render json: @places
  end

  def show
    @place = Place.find(params[:id])
    @hotels = Hotel.where(city: @place.city)
  end
end

