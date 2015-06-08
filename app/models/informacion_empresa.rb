class InformacionEmpresa < ActiveRecord::Base
  belongs_to :empresa
  has_many :item_de_infos, dependent: :destroy
end
