class CreateGaleriaProcesos < ActiveRecord::Migration
  def change
    create_table :galeria_procesos do |t|
      t.string :título
      t.text :descrición
t.references :producto, index: true
      t.timestamps
    end
      add_attachment :galeria_procesos, :image
  end
end
