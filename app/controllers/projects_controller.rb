class ProjectsController < ApplicationController
  def index
    @projects = Project.page(params[:page]).reverse_order
  end
  
  def new
    @project = Project.new
    @status = params[:status_selection]
  end
  
  def create

    @project = Project.new(project_params)
    @project.user_id = current_user.id
   
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end 
  

  def edit
  end

  def show
    @project = Project.find(params[:id])
    @comment = Comment.new
    @comments = @project.comments
    @comments = Comment.all.order("created_at DESC").page(params[:page]).per(5)
  end

  private
  def project_params
    params.require(:project).permit(:user_id,:name, :content,:job_id ,:start_date, :finish_date, :status, :reducation_time, :total_amount, :reducation_amount,:number_of_month)
  end
end