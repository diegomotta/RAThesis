class AddDescripcionToItemDeInfos < ActiveRecord::Migration
  def change
  	add_column :item_de_infos, :descripción, :text
  end
end
