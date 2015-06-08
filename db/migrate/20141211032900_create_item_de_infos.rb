class CreateItemDeInfos < ActiveRecord::Migration
  def change
    create_table :item_de_infos do |t|
      t.string :título
      t.string :descripción
      t.references :informacion_empresa, index: true

      t.timestamps
    end
    add_attachment :item_de_infos, :image
  end
end
