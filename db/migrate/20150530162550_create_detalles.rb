class CreateDetalles < ActiveRecord::Migration
  def change
    create_table :detalles do |t|
      t.text :descripción
      t.text :elaboración
      t.text :presentación
      t.text :packaging
      t.text :origen
      t.text :secanza
      t.text :característica
      t.references :item_producto, index: true
      t.timestamps
    end
  end
end
