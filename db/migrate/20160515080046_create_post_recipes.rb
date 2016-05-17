class CreatePostRecipes < ActiveRecord::Migration
  def change
    create_table :post_recipes do |t|
      t.string :content
      t.references :food, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
