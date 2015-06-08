json.array!(@opinions) do |opinion|
  json.extract! opinion, :id, :nombre, :nacionalidad, :provincia, :ciudad, :comentario
  json.url opinion_url(opinion, format: :json)
end
