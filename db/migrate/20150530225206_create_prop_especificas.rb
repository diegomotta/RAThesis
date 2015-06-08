class CreatePropEspecificas < ActiveRecord::Migration
  def change
    create_table :prop_especificas do |t|
      t.string :item
      t.text :descripción
      t.references :detalle, index: true
      t.timestamps
    end
  end
end
