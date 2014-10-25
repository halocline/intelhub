json.array!(@roadmap_data_classes) do |roadmap_data_class|
  json.extract! roadmap_data_class, :id, :roadmap_id, :data_class_id
  json.url roadmap_data_class_url(roadmap_data_class, format: :json)
end
