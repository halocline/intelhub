json.array!(@problems) do |problem|
  json.extract! problem, :id, :name, :problem_class_id, :problem_roadmap_id
  json.url problem_url(problem, format: :json)
end
