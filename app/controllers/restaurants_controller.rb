class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaraunt_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaraunt_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

end
