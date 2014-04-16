class CreateTitreMenus < ActiveRecord::Migration
  def change
    create_table :titre_menus do |t|

      t.timestamps
    end
  end
end
