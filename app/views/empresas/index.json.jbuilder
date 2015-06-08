json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :nombre, :actividad, :provincia, :localidad, :dirección, :telefono
  json.url empresa_url(empresa, format: :json)
end
