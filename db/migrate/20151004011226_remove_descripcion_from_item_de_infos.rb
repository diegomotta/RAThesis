class RemoveDescripcionFromItemDeInfos < ActiveRecord::Migration
  def change
  	remove_column :item_de_infos, :descripción
  end
end
