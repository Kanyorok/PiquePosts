class Api::V1::CommentsController < ApplicationController
  def index
    @comments = Comment.where(post_id: post.id)
    render json: @comments
  end

  def show
    render json: @comment
  end

  def create
    @post = post
    @comment = @post.comments.new(comment_params)

    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @comment.destroy
  end
end