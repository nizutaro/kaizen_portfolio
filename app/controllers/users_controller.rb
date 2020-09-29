class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  def index
    #@users = User.page(params[:page]).reverse_order
    #@users = User.where(activated: true).paginate(page: params[:page]).search(params[:search])
    @users = User.all.page(params[:page]).search(params[:search])
  end

  def show
    @user = User.find(params[:id])
    #@projects = @user.projects
    @projects_count = Project.where(user_id: @user).count

    @projects = @user.projects.order("created_at DESC").page(params[:page]).per(10)


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
