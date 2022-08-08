class UsersController < ApplicationController

  def new
    @user_image = UserImage.new

  end

  def index
    @users = User.all
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @user_image = @user_images
  end

  def create
    @user_images = UserImage.new(user_image_params)
    @user_images.user_id = current_user.id
    @user_images.save
    redirect_to user_images_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update

    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user.id)
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end