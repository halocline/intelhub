json.array!(@problem_classes) do |problem_class|
  json.extract! problem_class, :id, :name
  json.url problem_class_url(problem_class, format: :json)
end
