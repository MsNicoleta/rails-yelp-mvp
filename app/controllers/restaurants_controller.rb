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

  def edit
  end

  def update
  end

  def destroy
  end

  def create
    @restaurant = Restaurant.new(params[:id])
    if @restaurant.save
      redirect_to @restaurant, notice: "Restaurant was successfully created."
    else
        render :new, status: :unprocessable_entity
    end
  end
end
