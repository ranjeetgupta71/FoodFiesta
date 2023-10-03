class FoodsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @food = @restaurant.foods.find(params[:id])
  end
end
