json.array!(@page_components) do |page_component|
  json.extract! page_component, :id, :page_id
  json.url page_component_url(page_component, format: :json)
end
