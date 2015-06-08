json.array!(@prop_generals) do |prop_general|
  json.extract! prop_general, :id, :descripción
  json.url prop_general_url(prop_general, format: :json)
end
