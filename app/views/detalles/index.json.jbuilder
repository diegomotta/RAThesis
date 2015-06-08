json.array!(@detalles) do |detalle|
  json.extract! detalle, :id, :descripcion, :elaboracion, :presentacion, :origen, :secanza, :caracteristica
  json.url detalle_url(detalle, format: :json)
end
