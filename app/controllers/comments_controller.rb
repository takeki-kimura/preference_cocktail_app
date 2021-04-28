class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    if @comment.save
       redirect_to "/cocktails/#{@comment.cocktail_id}"
    else
      @cocktail = @comment.cocktail
      @comments = @cocktail.comments
      render "cocktails/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, cocktail_id: params[:cocktail_id])
  end
end