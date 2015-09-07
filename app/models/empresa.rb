class Empresa < ActiveRecord::Base
	has_many :informacion_empresas, dependent: :destroy
	has_many :noticia_empresas, dependent: :destroy
    has_many :productos, dependent: :destroy
    has_many :ubicacion_geos, dependent: :destroy
    has_many :videos, dependent: :destroy
    has_many :consulta_clientes, dependent: :destroy
 	has_many :estadisticas, dependent: :destroy

 	has_attached_file :image, :styles => { :medium => "90x90>", :thumb => "90x90>" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

   def image_url
     image.url(:thumb)
   end
end
