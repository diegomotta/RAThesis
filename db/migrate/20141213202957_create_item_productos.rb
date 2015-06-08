class CreateItemProductos < ActiveRecord::Migration
  def change
    create_table :item_productos do |t|
      t.string :marca
      t.string :tipo
      t.references :producto, index: true

      t.timestamps
    end
        add_attachment :item_productos, :image
  end
end
