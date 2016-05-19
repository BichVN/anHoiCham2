class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :post_recipe
      t.references :menu, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
