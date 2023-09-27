class HomeController < ApplicationController
  def index
    @message = "Zomato Clone"
    flash[:notice] = "Logged in Successfully"
    flash[:alert] = "Invalid email or password"
  end
end
