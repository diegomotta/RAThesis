class UbicacionGeo < ActiveRecord::Base
  belongs_to :empresa
  geocoded_by :address
  after_validation :geocode
  
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "300x300>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  def image_url
     image.url(:thumb)
  end

end
