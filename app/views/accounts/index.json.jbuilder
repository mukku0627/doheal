json.array!(@accounts) do |account|
  json.extract! account, :id, :name, :comment, :delete_flag, :created_at, :updated_at
  json.url account_url(account, format: :json)
end
