class RenameFarstNameColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :farst_name, :first_name
  end
end
