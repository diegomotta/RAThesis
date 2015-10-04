class AddDescripcionToItemDeInfos < ActiveRecord::Migration
  def change
  	remove_column :item_de_infos, :descrición, :string
  	add_column :item_de_infos, :descripción, :text

  end
end
