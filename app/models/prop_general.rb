
class PropGeneral < ActiveRecord::Base
	belongs_to :producto
	has_many :prop_general_items, dependent: :destroy
	has_many :galeria_props, dependent: :destroy
end
