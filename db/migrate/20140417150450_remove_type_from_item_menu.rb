class RemoveTypeFromItemMenu < ActiveRecord::Migration
  def change
    remove_column :item_menus, :type
  end
end
