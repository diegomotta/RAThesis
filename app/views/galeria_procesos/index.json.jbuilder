json.array!(@galeria_procesos) do |galeria_proceso|
  json.extract! galeria_proceso, :id, :título, :descrición
  json.url galeria_proceso_url(galeria_proceso, format: :json)
end
