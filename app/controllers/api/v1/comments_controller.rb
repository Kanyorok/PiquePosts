class Api::V1::CommentsController < ApplicationController
  def index
    @comments = Comment.where(post_id: post.id)
    render json: @comments
  end

  def show
    render json: @comment
  end
end