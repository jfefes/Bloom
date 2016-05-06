json.array!(@component_props) do |component_prop|
  json.extract! component_prop, :id, :page_component_id
  json.url component_prop_url(component_prop, format: :json)
end
