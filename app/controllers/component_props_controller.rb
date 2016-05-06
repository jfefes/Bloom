class ComponentPropsController < ApplicationController
  before_action :set_component_prop, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /component_props
  # GET /component_props.json
  def index
    @component_props = ComponentProp.all
    # @page_components = PageComponent.all
  end

  # GET /component_props/1
  # GET /component_props/1.json
  def show
  end

  # GET /component_props/new
  def new
    @component_prop = ComponentProp.new
  end

  # GET /component_props/1/edit
  def edit
  end

  # POST /component_props
  # POST /component_props.json
  def create
    @component_prop = ComponentProp.new(component_prop_params)

    respond_to do |format|
      if @component_prop.save
        format.html { redirect_to @component_prop, notice: 'Component prop was successfully created.' }
        format.json { render :show, status: :created, location: @component_prop }
      else
        format.html { render :new }
        format.json { render json: @component_prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /component_props/1
  # PATCH/PUT /component_props/1.json
  def update
    respond_to do |format|
      if @component_prop.update(component_prop_params)
        format.html { redirect_to @component_prop, notice: 'Component prop was successfully updated.' }
        format.json { render :show, status: :ok, location: @component_prop }
      else
        format.html { render :edit }
        format.json { render json: @component_prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /component_props/1
  # DELETE /component_props/1.json
  def destroy
    @component_prop.destroy
    respond_to do |format|
      format.html { redirect_to component_props_url, notice: 'Component prop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component_prop
      @component_prop = ComponentProp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def component_prop_params
      params.require(:component_prop).permit(:react_component_id, :prop_name)
    end
end
