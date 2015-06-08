class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.string :nombre
      t.string :nacionalidad
      t.string :pais
      t.string :ciudad
      t.string :comentario
      t.references :item_producto, index: true
      t.timestamps
    end
  end
end
