class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images
  end

  def edit
  end
  
  def index
    @user = current_user
    @users = User.all
  end
end
