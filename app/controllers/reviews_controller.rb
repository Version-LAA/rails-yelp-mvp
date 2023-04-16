class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new(restaurant_params)

    @review.restaurant = @restaurant

  end

  private

  def restaurant_params
    params.require(:review).permit(:rating, :content)
  end
end

# review
# reviews
# Review
