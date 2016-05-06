page = Page.new(
  title: "Example Page",
  slug: "example"
)
page.save

page_component = PageComponent.new(
  page: page,
  react_component: ReactComponent.first,
  order: 1,
)
page_component.save

ComponentContent.create(
  page_component: page_component,
  name: "imageLink",
  value: "https://i.ytimg.com/vi/m5d1FlSeF-M/maxresdefault.jpg"
)
ComponentContent.create(
  page_component: page_component,
  name: "textContent",
  value: "<p>This example is two bootstrap columns. The textContent prop is rendered on the left side, and the image prop is rendered on the right, in the second column.</p> <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce imperdiet suscipit tellus lacinia dictum. Praesent iaculis malesuada mi, eget aliquet lacus tempor ac. Duis ornare dolor turpis, quis sollicitudin mauris rhoncus sit amet. Cras lacus lacus, interdum eget est vel, sodales tincidunt sem. Vivamus sit amet orci vestibulum, dictum dolor ac, imperdiet purus. Integer nibh lorem, posuere id ligula at, dignissim rhoncus libero. Mauris vitae orci non eros tincidunt sollicitudin. Aenean accumsan nibh tincidunt feugiat laoreet. Vivamus rhoncus libero id bibendum venenatis. Sed odio mauris, vulputate maximus felis quis, fermentum lacinia dui. Sed sollicitudin velit nulla, in scelerisque lectus aliquet vitae. Vestibulum aliquet, metus at aliquet blandit, augue risus laoreet quam, sed aliquam erat urna eu felis. Cras ornare pellentesque tellus, eget volutpat mi consequat a. In hac habitasse platea dictumst. Maecenas tempus risus id dui dapibus feugiat.</p>"
)
ComponentContent.create(
  page_component: page_component,
  name: "altValue",
  value: "Alt Text for the Image"
)
