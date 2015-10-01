json.array!(@opinions) do |opinion|
  json.extract! opinion, :id, :nombre, :nacionalidad, :pais, :ciudad, :comentario

end
