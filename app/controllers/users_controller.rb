class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  def index
    @users = User.all.page(params[:page]).search(params[:search])

  end

  def show
    @user = User.find(params[:id])
    @projects_count = Project.where(user_id: @user).count
    @projects = @user.projects.order("created_at DESC").page(params[:page]).per(10)
    @image_url = @user.user_image
  end
  def edit
    @user = User.find(params[:id])
    @image_url = @user.user_image
    if @user != current_user
      redirect_to user_path(current_user)
      flash[:danger] = '編集画面は自分のアカウントでログインしてださい'
    end

  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      sleep(3) # S3への画像反映のタイムラグ
      flash[:success] = 'プロフィールを更新しました'
      redirect_to user_path(@user)
    else
      @user = current_user
      flash[:danger] = '投稿に失敗しました'
      render :edit
    end
  end
  private
  def user_params
    params.require(:user).permit(:family_name,:farst_name,:image, :image_id,:admin_status, :email)
  end
end
