class UbicacionGeo < ActiveRecord::Base
  belongs_to :empresa
  geocoded_by :address
  after_validation :geocode


end
