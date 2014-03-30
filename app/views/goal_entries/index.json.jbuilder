json.array!(@goal_entries) do |goal_entry|
  json.extract! goal_entry, :id, :goal_id, :status
  json.url goal_entry_url(goal_entry, format: :json)
end
