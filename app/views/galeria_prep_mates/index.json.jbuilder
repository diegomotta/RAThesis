json.array!(@galeria_prep_mates) do |galeria_prep_mate|
  json.extract! galeria_prep_mate, :id, :título, :descrición
  json.url galeria_prep_mate_url(galeria_prep_mate, format: :json)
end
