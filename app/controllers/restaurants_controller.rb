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
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
#   Prefix Verb   URI Pattern                     Controller#Action
#   restaurants GET    /restaurants(.:format)          restaurants#index
#               POST   /restaurants(.:format)          restaurants#create
# new_restaurant GET    /restaurants/new(.:format)      restaurants#new
# edit_restaurant GET    /restaurants/:id/edit(.:format) restaurants#edit
#    restaurant GET    /restaurants/:id(.:format)      restaurants#show
#               PATCH  /restaurants/:id(.:format)      restaurants#update
#               DELETE /restaurants/:id(.:format)      restaurants#destroy

  # GET "restaurants"
  # A visitor can add a new restaurant, and be redirected to the show view of that new restaurant.
  # GET "restaurants/new"
  # POST "restaurants"
  # A visitor can see the details of a restaurant, with all the reviews related to the restaurant.
  # GET "restaurants/38"
  # A visitor can add a new review to a restaurant
  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"