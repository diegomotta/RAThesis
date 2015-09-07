json.array!(@detalles) do |detalle|
  json.extract! detalle, :id, :descripción, :elaboración, :presentación, :origen, :secanza, :característica
  json.url detalle_url
end


