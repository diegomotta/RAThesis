json.array!(@ubicacion_geos) do |ubicacion_geo|
  json.extract! ubicacion_geo, :latitude, :longitude, :address, :description, :title
  json.url empresa_ubicacion_geos_url(ubicacion_geo, format: :json)
end
