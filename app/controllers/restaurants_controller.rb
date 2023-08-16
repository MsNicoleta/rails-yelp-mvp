class RestaurantsController < ApplicationController
  def index
    # Action: Fetch all restaurants from the database and store them in the '@restaurants' instance variable.
    @restaurants = Restaurant.all
  end

  def show
    # Action: Find a specific restaurant by its 'id' parameter and store it in the '@restaurant' instance variable.
    @restaurant = Restaurant.find(params[:id])

    # Create an empty 'Review' object and store it in the '@review' instance variable.
    @review = Review.new
  end

  def new
    # Action: Create a new, empty 'Restaurant' object and store it in the '@restaurant' instance variable.
    @restaurant = Restaurant.new
  end

  def create
    # Action: Create a new 'Restaurant' object with data from the 'restaurant_params' method.
    @restaurant = Restaurant.new(restaurant_params)

    # Attempt to save the new restaurant to the database.
    if @restaurant.save
      # If the restaurant is successfully saved, redirect to the show page for that restaurant.
      redirect_to restaurant_path(@restaurant)
    else
      # If the restaurant cannot be saved, render the 'new' view again with an error status.
      render :new, status: :unprocessable_entity
    end
  end

  private

  # Private method: Defines the permitted parameters that can be used to create or update a restaurant.
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    # Only allow the specified attributes (:name, :address, :phone_number, :category) to be mass-assigned.
  end
end
