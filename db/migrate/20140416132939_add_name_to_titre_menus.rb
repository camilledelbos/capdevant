class AddNameToTitreMenus < ActiveRecord::Migration
  def change
    add_column :titre_menus, :name, :string
  end
end
