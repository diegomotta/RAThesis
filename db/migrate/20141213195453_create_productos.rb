class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :titulo
      t.references :empresa, index: true
      t.timestamps
    end
  end
end
