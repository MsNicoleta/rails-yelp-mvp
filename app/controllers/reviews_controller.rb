class ReviewsController < ApplicationController
  def create
    # Find the restaurant associated with the provided 'restaurant_id' parameter.
    @restaurant = Restaurant.find(params[:restaurant_id])

    # Create a new 'Review' object with data from the 'review_params' method.
    @review = Review.new(review_params)

    # Associate the new review with the current restaurant.
    @review.restaurant = @restaurant

    # Attempt to save the new review to the database.
    if @review.save
      # If the review is successfully saved, redirect to the show page of the associated restaurant.
      redirect_to restaurant_path(@restaurant)
    else
      # If the review cannot be saved, render the 'show' view of the associated restaurant with an error status.
      render "restaurants/show", status: :unprocessable_entity
    end
  end

  private

  # Private method: Defines the permitted parameters that can be used to create a review.
  def review_params
    params.require(:review).permit(:rating, :content)
    # Only allow the specified attributes (:rating, :content) to be mass-assigned.
  end
end
