class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :menuName
      t.string :content
      t.references :user, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true
      t.integer :status, default: 0
      t.integer :ask_user_id
      t.timestamps null:false
    end
    add_index :menus, [:user_id, :created_at]
  end
end
