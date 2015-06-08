json.array!(@videos) do |video|
  json.extract! video, :id, :titulo, :url, :descripcion
  json.url video_url(video, format: :json)
end
