class ItemProducto < ActiveRecord::Base
  belongs_to :producto
  has_many :galeria_imagenes
  has_many :videos_productos
  has_many :opinions
  has_many :detalles
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "300x300>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  def image_url
     image.url(:thumb)
  end
end