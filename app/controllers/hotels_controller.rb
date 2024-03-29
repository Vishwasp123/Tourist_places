class HotelsController < ApplicationController

  before_action :set_hotel, only: [:show, :edit, :update]

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      redirect_to @hotel
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @hotel.update(hotel_params)
      redirect_to @hotel
    else
      render "edit"
    end
  end

  def show
  end

  private

  def set_hotel
    @hotel = Hotel.find(params[:id])
  end

  def hotel_params
    params.require(:hotel).permit(:name, :city, hotel_images: [])
  end
end
