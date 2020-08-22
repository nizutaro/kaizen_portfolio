class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :name, null: false, default: ""
      t.integer :amount, null: false, default: 0
      t.timestamps
    end
  end
end
