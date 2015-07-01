json.array!(@tools) do |tool|
  json.extract! tool, :id, :name, :url, :description
  json.url tool_url(tool, format: :json)
end
