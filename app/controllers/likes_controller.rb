class LikesController < ApplicationController
  before_action :authenticate_user!
  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:post_id])
    @like = @post.likes.build
    @like.author = current_user

    if @like.save
      flash[:success] = 'Liked'
    else
      flash[:error] = 'Like could not be saved.'
    end
    redirect_to user_post_path(@user, @post)
  end
end
