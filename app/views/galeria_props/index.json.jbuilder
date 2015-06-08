json.array!(@galeria_props) do |galeria_prop|
  json.extract! galeria_prop, :id
  json.url galeria_prop_url(galeria_prop, format: :json)
end
