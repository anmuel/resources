json.array!(@resources) do |resource|
  json.extract! resource, :id, :name, :uri
  json.url resource_url(resource, format: :json)
end
