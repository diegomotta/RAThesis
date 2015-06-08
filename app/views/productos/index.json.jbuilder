json.array!(@productos) do |producto|
  json.extract! producto, :id, :titulo
  json.url empresa_productos_url(producto, format: :json)
end
