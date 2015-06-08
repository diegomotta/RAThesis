json.array!(@empresa.consulta_clientes) do |consulta_cliente|
  json.extract! consulta_cliente, :nombre, :correo, :telefono, :descripcion
  json.url empresa_consulta_cliente_url(@empresa,consulta_cliente, format: :json)
end
