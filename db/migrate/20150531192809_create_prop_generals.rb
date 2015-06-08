class CreatePropGenerals < ActiveRecord::Migration
  def change
    create_table :prop_generals do |t|
      t.text :descripción
	  t.references :producto, index: true
      t.timestamps
    end
     
  end
end
