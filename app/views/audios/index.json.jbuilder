json.array!(@audios) do |audio|
  json.extract! audio, :id, :image, :document, :audio
  json.url audio_url(audio, format: :json)
end
