class CreateGaleriaImagenes< ActiveRecord::Migration
  def change
    create_table :galeria_imagenes do |t|
      t.string :titulo
      t.text :descripcion
      t.references :item_producto, index: true

      t.timestamps
    end
       add_attachment :galeria_imagenes, :image
  end
end
