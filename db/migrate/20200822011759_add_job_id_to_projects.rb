class AddJobIdToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :job_id, :integer
  end
end
