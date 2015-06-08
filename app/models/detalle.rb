class Detalle < ActiveRecord::Base
	belongs_to :item_producto
	has_many :prop_especificas
end
