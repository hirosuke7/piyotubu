class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @comment.hiyoko
    else
      render template: "hiyokos/show"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @comment.hiyoko
  end


  private

  def comment_params
    params.require(:comment).permit(:body, :hiyoko_id, :user_id)
  end
end
