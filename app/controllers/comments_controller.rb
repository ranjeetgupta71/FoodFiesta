class CommentsController < ApplicationController
   def create
    @food = Food.find(params[:food_id])
    @comment = @food.comments.create(comment_params)
    redirect_to(restaurant_food_path(@food.restaurant, @food))
  end

  def destroy
    @food = Food.find(params[:food_id])
    @comment = @food.comments.find(params[:id])
    @comment.destroy

    redirect_to restaurant_food_comment_path, notice: "Comment deleted successfully"
  end

  private
    def comment_params
      params.permit(:commenter, :body)
    end
end
