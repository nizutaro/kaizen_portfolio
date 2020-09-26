module ProjectsHelper
  
  def reducation_name
    
    project_id = ''
    @projects.each do |project|
      project_id += project.id.to_s
    end
    return project_id
  end 

  def reducation
    reducation_hour = ''
    reducation_min = ''
    @projects.each do |project|
     if project.reducation_time >= 60
        reducation_hour += (project.reducation_time / 60).to_s
        reducation_min += (project.reducation_time  % 60).to_s
      else
        reducation_min += (project.reducation_time).to_s
      end
    end
    return reducation_hour, reducation_min
  end
end
