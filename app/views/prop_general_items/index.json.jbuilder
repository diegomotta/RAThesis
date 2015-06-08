json.array!(@prop_general_items) do |prop_general_item|
  json.extract! prop_general_item, :id, :item, :descripción
  json.url prop_general_item_url(prop_general_item, format: :json)
end
