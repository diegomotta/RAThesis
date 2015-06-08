json.array!(@item_productos) do |item_producto|
  json.extract! item_producto, :id, :marca, :tipo
  json.url empresa_producto_item_productos_url(@empresa,item_producto, format: :json)
end
