class ReviewsController < ApplicationController
  def new
    @restaraunt = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end
end
