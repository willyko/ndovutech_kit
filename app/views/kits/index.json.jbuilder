json.array!(@kits) do |kit|
  json.extract! kit, :id, :title, :mission
  json.url kit_url(kit, format: :json)
end
