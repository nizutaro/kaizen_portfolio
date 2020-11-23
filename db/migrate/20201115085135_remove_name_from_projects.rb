class RemoveNameFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :total_amount, :integer
  end
end
