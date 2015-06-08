class CreateVideosProductos < ActiveRecord::Migration
  def change
    create_table :videos_productos do |t|
      t.string :titulo
      t.string :descripcion
      t.string :url
      t.references :item_producto, index: true
      t.timestamps
    end
  end
end
