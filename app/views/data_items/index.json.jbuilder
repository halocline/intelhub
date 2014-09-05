json.array!(@data_items) do |data_item|
  json.extract! data_item, :id, :name, :data_class_id, :data_source_id
  json.url data_item_url(data_item, format: :json)
end
