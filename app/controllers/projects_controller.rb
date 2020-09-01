class ProjectsController < ApplicationController
  def index
    @projects = Project.page(params[:page]).reverse_order
    #chart.js
    #@user_data = Project.group(:user_id)

    @user = Project.group(:user_id).pluck(:user_id)
    @data = Project.group(:user_id).pluck(:reducation_time)
    #@user.each do |user|
    #  user.find_by(user)
    #end

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
    @project.total_amount = job_amount * @project.number_of_month * @project.reducation_time

    if @project.save
      redirect_to projects_path, notice: "提案を保存しました！"
    else
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
      render:edit
    end
  end

  def show
    @project = Project.find(params[:id])
    @comment = Comment.new
    @comments = @project.comments.order("created_at DESC").page(params[:page]).per(5)

  end

  private
  def project_params
    params.require(:project).permit(:user_id,:name, :content,:job_id ,:start_date, :finish_date, :status, :reducation_time, :total_amount, :reducation_amount,:number_of_month)
  end
end