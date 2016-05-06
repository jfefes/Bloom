json.array!(@component_contents) do |component_content|
  json.extract! component_content, :id
  json.url component_content_url(component_content, format: :json)
end
