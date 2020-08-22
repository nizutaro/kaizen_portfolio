class CreateNiceTries < ActiveRecord::Migration[5.2]
  def change
    create_table :nice_tries do |t|
      t.integer :user_id, null: false
      t.integer :post_user_id, null: false
      t.timestamps
    end
  end
end
