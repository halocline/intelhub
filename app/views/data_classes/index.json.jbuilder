json.array!(@data_classes) do |data_class|
  json.extract! data_class, :id, :name
  json.url data_class_url(data_class, format: :json)
end
