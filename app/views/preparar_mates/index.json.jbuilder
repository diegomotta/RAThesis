json.array!(@preparar_mates) do |preparar_mate|
  json.extract! preparar_mate, :id, :título, :descrición
  json.url preparar_mate_url(preparar_mate, format: :json)
end
