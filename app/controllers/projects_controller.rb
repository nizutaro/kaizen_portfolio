class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end
  
  def new
    @project = Project.new
    @status = params[:status_selection]
  end
  
  def create
   
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    
    @project.save
    redirect_to projects_path
  end 
  

  def edit
  end

  def show
    @project = Project.find(params[:id])
  end

  private
  def project_params
    params.require(:project).permit(:user_id,:name, :content, :start_date, :finish_date, :status, :reducation_time, :total_amount, :reducation_amount,:number_of_month)
  end
end