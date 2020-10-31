class JobsController < ApplicationController
  before_action :authenticate_user!
  def index
    @job = Job.new
    @jobs = Job.all
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:notice] = "登録しました！"
      redirect_to jobs_path
    else
      @jobs = Job.all
      flash.now[:danger] = "登録に失敗しました！"
      render :index
    end
  end

  def edit
    @job = Job.find(params[:id])
    
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      flash[:notice] = "更新しました！"
      redirect_to jobs_path
    else
      flash[:danger] = "更新に失敗しました！"
      render :edit
    end
  end

  private
  def job_params
    params.require(:job).permit(:name, :amount)
  end
end
