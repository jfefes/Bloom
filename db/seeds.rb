component = ReactComponent.new(
   nickname: "ImgRightTextLeft",
   component_name: "LargeRightImageArticle",
)
component.save

ComponentProp.create(
    react_component: component,
    prop_name: "imageLink"
)

ComponentProp.create(
    react_component: component,
    prop_name: "textContent"
)

ComponentProp.create(
    react_component: component,
    prop_name: "altValue"
)

User.create(
        username: "admin",
        email: "admin@example.com",
        password: "password"
    )
