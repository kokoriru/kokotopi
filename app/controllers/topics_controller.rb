class TopicsController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @categories = Category.all
    @topic = Topic.find(params[:id])
    @comment = Comment.new
  end
end
