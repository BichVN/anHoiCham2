class CreateMenuTags < ActiveRecord::Migration
  def change
    create_table :menu_tags do |t|
      t.references :menu, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
