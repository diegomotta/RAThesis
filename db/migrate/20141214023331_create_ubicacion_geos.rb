class CreateUbicacionGeos < ActiveRecord::Migration
  def change
    create_table :ubicacion_geos do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.text :description
      t.string :title
      t.references :empresa, index: true

      t.timestamps
    end
  end
end
