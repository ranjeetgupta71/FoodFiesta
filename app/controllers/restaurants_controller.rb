# app/controllers/restaurants_controller.rb
class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all

  end

  def show
    # binding.pry
    @restaurant = Restaurant.find(params[:id])
    @foods = @restaurant.foods

  end

  # def show
  #   @article = Article.find(params[:id])
  # end


end
