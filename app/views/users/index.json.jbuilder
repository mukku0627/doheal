json.array!(@users) do |user|
  json.extract! user, :id, :account_id, :name, :comment, :delete_flag, :created_at, :updated_at
  json.url user_url(user, format: :json)
end
