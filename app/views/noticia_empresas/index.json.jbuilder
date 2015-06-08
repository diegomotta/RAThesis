json.array!(@noticia_empresas) do |noticia_empresa|
  json.extract! noticia_empresa, :id, :titulo, :descripcion, :image
  json.url empresa_noticia_empresas_url(noticia_empresa, format: :json)
end
