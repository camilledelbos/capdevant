class CreateItemMenus < ActiveRecord::Migration
  def change
    create_table :item_menus do |t|
      t.string :name
      t.string :zone
      t.string :type

      t.timestamps
    end
  end
end
