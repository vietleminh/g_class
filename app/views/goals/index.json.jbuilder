json.array!(@goals) do |goal|
  json.extract! goal, :id, :content, :deadline
  json.url goal_url(goal, format: :json)
end
