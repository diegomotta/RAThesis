json.array!(@item_producto.galeria_imagenes) do |galeria_imagene|
  json.extract! galeria_imagene, :id, :titulo, :descripcion
  json.url empresa_producto_item_producto_galeria_imagene_url(@empresa,@producto,@item_producto,galeria_imagene, format: :json)
end