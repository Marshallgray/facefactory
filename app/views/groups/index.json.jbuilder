json.array!(@groups) do |group|
  json.extract! group, :id, :name, :description, :logo, :owner_id
  json.url group_url(group, format: :json)
end
