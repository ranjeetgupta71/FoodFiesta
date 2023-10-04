class CommentsController < ApplicationController
   def create
    @food = Food.find(params[:food_id])
    @comment = @food.comments.create(comment_params)
    redirect_to(restaurant_food_path(@food.restaurant, @food))
  end

  private
    def comment_params
      params.permit(:commenter, :body)
    end
end
