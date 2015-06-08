json.array!(@item_de_infos) do |item_de_info|
  json.extract! item_de_info, :id, :título, :descripción, :image
  json.url empresa_informacion_empresa_item_de_infos_url(@empresa,item_de_info, format: :json)
end
