json.array!(@questions) do |question|
  json.extract! question, :id, :question, :problem_id
  json.url question_url(question, format: :json)
end
