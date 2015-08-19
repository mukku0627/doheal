json.array!(@conditions) do |condition|
  json.extract! condition, :id, :user_id, :comment, :trace_at, :status, :delete_flag, :created_at, :updated_at
  json.url condition_url(condition, format: :json)
end
