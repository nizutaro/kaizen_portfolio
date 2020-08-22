class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end
  def create
    @project = project.new(project_params)
    @project.save
    redirect_to project_path
  end 
  def new
    @project = Project.new
    @status = params[:status_selection]
  end

  def edit
  end

  def show
  end

  private
  def project_params
    params.require(:project).permit(:name, :content, :stat_date, :finish_date, :status, :reducation_time, :total_amount, :total_amount, :reducation_amount)

  end
end