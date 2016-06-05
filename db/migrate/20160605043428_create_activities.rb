class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :activity_type
      t.integer :food_id
      t.integer :menu_id
      t.integer :user_id
      t.integer :ask_user_id
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
