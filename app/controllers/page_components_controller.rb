class PageComponentsController < ApplicationController
  before_action :set_page_component, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /page_components
  # GET /page_components.json
  def index
    @page_components = PageComponent.all
  end

  # GET /page_components/1
  # GET /page_components/1.json
  def show
  end

  # GET /page_components/new
  def new
    @page_component = PageComponent.new
  end

  # GET /page_components/1/edit
  def edit
  end

  # POST /page_components
  # POST /page_components.json
  def create
    @page_component = PageComponent.new(page_component_params)

    respond_to do |format|
      if @page_component.save
        component = ReactComponent.where(:id=>@page_component.react_component.id).includes(:component_prop).all

        component.each do |comp|
          comp.component_prop.each do |prop|
            ComponentContent.create(
                page_component: @page_component,
                name: prop.prop_name,
                value: ""
            )
          end
        end
        format.html { redirect_to @page_component, notice: 'Page component was successfully created.' }
        format.json { render :show, status: :created, location: @page_component }
      else
        format.html { render :new }
        format.json { render json: @page_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_components/1
  # PATCH/PUT /page_components/1.json
  def update
    respond_to do |format|
      if @page_component.update(page_component_params)
        format.html { redirect_to @page_component, notice: 'Page component was successfully updated.' }
        format.json { render :show, status: :ok, location: @page_component }
      else
        format.html { render :edit }
        format.json { render json: @page_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_components/1
  # DELETE /page_components/1.json
  def destroy
    @page_component.destroy
    respond_to do |format|
      format.html { redirect_to page_components_url, notice: 'Page component was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_component
      @page_component = PageComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_component_params
      params.require(:page_component).permit(:page_id, :react_component_id, :order)
    end
end
