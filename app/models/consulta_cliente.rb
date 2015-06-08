class ConsultaCliente < ActiveRecord::Base
	belongs_to :empresa
    has_many :consulta_clientes, dependent: :destroy
end
