json.array!(@prop_especificas) do |prop_especifica|
  json.extract! prop_especifica, :id, :string, :string
  json.url prop_especifica_url(prop_especifica, format: :json)
end
