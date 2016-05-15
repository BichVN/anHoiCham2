class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :quality
      t.references :food, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
