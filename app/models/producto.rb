class Producto < ActiveRecord::Base
  belongs_to :empresa
  has_many :item_productos, dependent: :destroy
  has_many :prop_generals, dependent: :destroy
  has_many :galeria_procesos, dependent: :destroy
  has_many :preparar_mates, dependent: :destroy
  has_many :galeria_prep_mates, dependent: :destroy
end
