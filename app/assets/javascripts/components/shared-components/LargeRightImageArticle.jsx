var windowWidth;

var LargeRightImageArticle = React.createClass({

  getWindowSize: function() {
      windowWidth = window.innerWidth;
      return windowWidth;
  },

  getInitialState: function() {
    content = JSON.parse(this.props.component_props)
    console.log(content.imageLink)
    console.log(content.textContent)
    console.log(content.altValue)

    return {
      windowWidth: this.getWindowSize(),
    };
  },

  componentDidMount: function() {

    var node = this.getDOMNode();
    var rect = node.getBoundingClientRect();
    TweenMax.to(node, 0, { css: {marginTop: "5rem"}});
    window.addEventListener('scroll', this.updateTopPos);
  },

  componentWillUnmount: function() {
    window.removeEventListener('scroll', this.updateTopPos);
  },

  render: function() {
    content = JSON.parse(this.props.component_props)
    return (
      <article className="row large-right-img-article">
        <div ref="content" className={"col-md-6 content " + this.props.className} id={this.props.id} dangerouslySetInnerHTML={{__html: content.textContent}}>
        </div>
        <div className="col-md-6">
          <img src={content.imageLink} alt={content.altValue} className="img-responsive" />
        </div>
      </article>
    );
  }
});
