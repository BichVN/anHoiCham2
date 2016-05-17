class AddImgToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :imgs, :string, array: true, default: []
  end
end
