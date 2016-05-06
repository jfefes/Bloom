class RenderController < ApplicationController
  require 'json'
  before_action :set_render, only: [:show, :edit, :update, :destroy]

  # GET /renders
  # GET /renders.json
  def index
    @slug = params[:slug]
    @page = Page.where(:slug => @slug).includes(:page_component).first

    @components = Hash.new

    @page.page_component.each_with_index do |component, index|
      props_hash = Hash.new
      component.component_content.each_with_index do |prop, prop_index|
        props_hash.merge!({prop.name => prop.value})
        # component_props.push(props_hash)
      end
      @components[@page.page_component[index].react_component.component_name] = props_hash
    end


    render "renders/index"
  end
end
