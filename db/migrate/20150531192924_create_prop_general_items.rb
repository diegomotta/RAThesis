class CreatePropGeneralItems < ActiveRecord::Migration
  def change
    create_table :prop_general_items do |t|
      t.string :item
      t.text :descripción
	  t.references :prop_general, index: true

      t.timestamps
    end
  end
end
