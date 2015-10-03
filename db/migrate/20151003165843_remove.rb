class Remove < ActiveRecord::Migration
  def up
    remove_column :item_de_infos, :descripción
  end

  def down
    add_column :item_de_infos, :descripción, :text
  end
end
