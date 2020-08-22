class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
     @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)  
      redirect_to user_path(current_user)
    else
      @user = current_user
      render :edit
    end
  end
  private
  def user_params
    params.require(:user).permit(:family_name,:farst_name,:image_id, :admin_status, :email)
  end
end
