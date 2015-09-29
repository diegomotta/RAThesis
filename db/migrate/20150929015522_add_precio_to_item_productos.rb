class AddPrecioToItemProductos < ActiveRecord::Migration
  def change
  	add_column :item_productos, :precio, :string
  end
end
