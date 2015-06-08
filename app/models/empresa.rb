class Empresa < ActiveRecord::Base
	has_many :informacion_empresas, dependent: :destroy
	has_many :noticia_empresas, dependent: :destroy
    has_many :productos, dependent: :destroy
    has_many :ubicacion_geos, dependent: :destroy
    has_many :videos, dependent: :destroy
    has_many :consulta_clientes, dependent: :destroy
end
