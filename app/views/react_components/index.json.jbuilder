json.array!(@react_components) do |react_component|
  json.extract! react_component, :id
  json.url react_component_url(react_component, format: :json)
end
