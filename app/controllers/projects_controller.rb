class ProjectsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  
  def index
    @projects = Project.page(params[:page]).reverse_order
    #chart.js
    @user = Project.group(:user_id).pluck(:user_id) #取得idを元にUserテーブルのカラム
    @user_name = User.where(id: @user).pluck(:family_name ,:farst_name)
    @data = Project.group(:user_id).sum(:reducation_time).values #時間を抽出
  end
  
  def new
    @project = Project.new
    @status = params[:status_selection]
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    job = Job.find(project_params[:job_id])
    job_amount = job.amount
    if @project.save
      redirect_to projects_path, notice: "提案を投稿しました！"
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
    if @project.user_id != current_user.id
      redirect_to projects_path 
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to projects_path, notice: "ユーザー情報を更新しました！"
    else
      flash.now[:danger] = "投稿に失敗しました"
      render:edit
    end
  end

  def show
    @project = Project.find(params[:id])
    @image_url = @project.user.user_image
    @comment = Comment.new
    @comments = @project.comments.order("created_at DESC").page(params[:page]).per(5)
  end

  private
  def project_params
    params.require(:project).permit(:user_id,:name, :content,:job_id ,:start_date, :finish_date, :status, :reducation_time, :total_amount, :reducation_amount,:number_of_month)
  end

end