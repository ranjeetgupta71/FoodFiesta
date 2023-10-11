# app/controllers/restaurants_controller.rb
class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @restaurant = Restaurant.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @foods = @restaurant.foods
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    redirect_to @restaurant
  end

  def edit
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    begin
      puts @restaurant
      @restaurant.destroy
      flash[:notice] = 'Restaurant was successfully destroyed.'
    rescue => e
      flash[:error] = "Error destroying restaurant: #{e.message}"
    end

  puts "After destroy, before redirect"
  puts @restaurant.inspect

    redirect_to restaurants_path, notice: 'Restaurant was successfully deleted.'
  end




  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

  # def show
  #   @article = Article.find(params[:id])
  # end
end
