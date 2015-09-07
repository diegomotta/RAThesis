class CreateGaleriaPrepMates < ActiveRecord::Migration
  def change
    create_table :galeria_prep_mates do |t|
      t.string :título
      t.text :descrición
      t.references :producto, index: true
      t.timestamps
    end
    add_attachment :galeria_prep_mates, :image
  end
end
