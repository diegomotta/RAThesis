json.array!(@videos_productos) do |videos_producto|
  json.extract! videos_producto, :id, :titulo, :descripcion, :url
  json.url videos_producto_url(videos_producto, format: :json)
end
