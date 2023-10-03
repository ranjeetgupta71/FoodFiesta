class CommentsController < ApplicationController
   def create
    @food = Food.find(params[:article_id])
    @comment = @food.comments.create(comment_params)
    redirect_to foodt_path(@food)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
