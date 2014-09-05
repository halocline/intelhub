json.array!(@roadmaps) do |roadmap|
  json.extract! roadmap, :id, :problem_id, :required_resources
  json.url roadmap_url(roadmap, format: :json)
end
