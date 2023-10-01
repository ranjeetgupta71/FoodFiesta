# app/controllers/restaurants_controller.rb
class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end
end
