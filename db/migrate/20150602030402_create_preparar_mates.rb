class CreatePrepararMates < ActiveRecord::Migration
  def change
    create_table :preparar_mates do |t|
      t.string :título
      t.text :descrición
t.references :producto, index: true
      t.timestamps
    end
  end
end
