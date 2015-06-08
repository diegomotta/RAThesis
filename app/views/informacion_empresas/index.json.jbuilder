json.array!(@informacion_empresas) do |informacion_empresa|
  json.extract! informacion_empresa, :id, :itemTitulo, :empresa_id
  json.url empresa_informacion_empresas_url(informacion_empresa, format: :json)
end
