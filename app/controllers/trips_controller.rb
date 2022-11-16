class TripsController < ApplicationController
  def index
  	@trips = Trip.all
  end

  def new
    @trip = Trip.new
  end
  
  def create
    trip = Trip.create! trip_params
    redirect_to trip
  end
  
  def show
    @trip = Trip.find(params[:id])
  end
  
  private
  
  def trip_params
    params.require(:trip).permit(:name, :content)
  end
  
end
