class FoodsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @food = @restaurant.foods.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @food = @restaurant.foods.find(params[:id])
    @food.destroy
    redirect_to restaurant_food_path, notice: "Food deleted successfully"
  end
end
