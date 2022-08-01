class UsersController < ApplicationController
  def show
    @user = current_user(params[:id])
    @user_images = @user.post_images
  end

  def edit
  end

  def index
    @user = current_user
  end

end
