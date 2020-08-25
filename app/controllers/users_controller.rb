class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:update, :destroy]
  def index
    @users = User.page(params[:page]).reverse_order
    @amount = Project.group(:user_id).sum(:reducation_time)
  end

  def show
    @user = User.find(params[:id])
    @projects = @user.projects
    
    @projects.each do |project|
      @reducation_time = project.reducation_time
    end
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to user_path(current_user)
    end
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
    params.require(:user).permit(:family_name,:farst_name,:image, :admin_status, :email)
  end
end
