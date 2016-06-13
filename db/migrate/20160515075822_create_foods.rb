class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.text :post_recipe
      t.references :menu, index: true, foreign_key: true
      t.integer :status
      t.integer :ask_user_id
      
      t.timestamps null: false
    end
  end
end
