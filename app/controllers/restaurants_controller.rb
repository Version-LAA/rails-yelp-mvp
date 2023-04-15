class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaraunt = Restaurant.find(params[:id])
  end

  def new
    @restaraunt = Restaurant.new
  end

  def create
    @restaraunt = Restaurant.new(restaraunt_params)
    @restaraunt.save
    redirect_to restaurant_path(@restaraunt)
  end

  private

  def restaraunt_params
    params.require(:restaurant).permit(:name, :address, :category)
  end

end
