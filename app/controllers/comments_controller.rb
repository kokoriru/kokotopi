class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.topic_id = params[:topic_id]

    if @comment.save
      redirect_to topic_path(@comment.topic_id)
    else
      render :new
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to topic_path(params[:topic_id])
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :content)
  end
end
