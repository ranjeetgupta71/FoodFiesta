# app/controllers/restaurants_controller.rb
class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @foods = @restaurant.foods
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to @restaurant
  end

  private

  def restaurant_params
    params.permit(:restaurant, :description, :address)
  end

  # def show
  #   @article = Article.find(params[:id])
  # end
end
