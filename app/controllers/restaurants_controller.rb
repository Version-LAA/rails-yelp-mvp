class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaraunt = Restaurant.find(params[:id])
  end
end
