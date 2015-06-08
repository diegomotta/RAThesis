class CreateGaleriaProps < ActiveRecord::Migration
  def change
    create_table :galeria_props do |t|
	  t.references :prop_general, index: true
      t.timestamps
    end
  add_attachment :galeria_props, :image
  end

end
