class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :typeOfMenu
      t.string :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :menus, [:user_id, :created_at]
  end
end
