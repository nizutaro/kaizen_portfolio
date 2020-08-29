class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :user_id, null: false, default: 0
      t.string :name, null: false, default: ""
      t.text :content, null: false
      t.date :start_date, null: false
      t.date :finish_date, null: false
      t.integer :status, null: false, default: 0
      t.integer :reducation_time, null: false
      t.integer :total_amount, null: false, dafault: 0
      t.integer :reducation_amount, null: false, default: 0
      t.integer :number_of_month, null: false

      t.timestamps
    end
  end
end
