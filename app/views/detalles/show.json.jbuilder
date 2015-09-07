json.extract! @detalle, :id, :descripción, :elaboración, :presentación, :origen, :secanza, :característica, :created_at, :updated_at
json.url detalle_url(@detalle, format: :json)
