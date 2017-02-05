class HotelController < ApplicationController
  def index
    @hotels=Hotel.all
    
  end

   def show
    @hotel = Hotel.find(params[:id])
  end

  def update
    # byebug
    @hotel=Hotel.find(params[:id])
    @hotel.name=params[:hotel][:name]
    @hotel.review=params[:hotel][:review]
    @hotel.rating=params[:hotel][:rating]
    @hotel.save

    render "show"    
  end

end
