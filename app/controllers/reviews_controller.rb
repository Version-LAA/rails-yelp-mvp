class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create]

  def create
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end

# review
# reviews
# Review
