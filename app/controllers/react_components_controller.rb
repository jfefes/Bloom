class ReactComponentsController < ApplicationController
  before_action :set_react_component, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  

  # GET /react_components
  # GET /react_components.json
  def index
    @react_components = ReactComponent.all
  end

  # GET /react_components/1
  # GET /react_components/1.json
  def show
  end

  # GET /react_components/new
  def new
    @react_component = ReactComponent.new
  end

  # GET /react_components/1/edit
  def edit
  end

  # POST /react_components
  # POST /react_components.json
  def create
    @react_component = ReactComponent.new(react_component_params)

    respond_to do |format|
      if @react_component.save
        format.html { redirect_to @react_component, notice: 'React component was successfully created.' }
        format.json { render :show, status: :created, location: @react_component }
      else
        format.html { render :new }
        format.json { render json: @react_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /react_components/1
  # PATCH/PUT /react_components/1.json
  def update
    respond_to do |format|
      if @react_component.update(react_component_params)
        format.html { redirect_to @react_component, notice: 'React component was successfully updated.' }
        format.json { render :show, status: :ok, location: @react_component }
      else
        format.html { render :edit }
        format.json { render json: @react_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /react_components/1
  # DELETE /react_components/1.json
  def destroy
    @react_component.destroy
    respond_to do |format|
      format.html { redirect_to react_components_url, notice: 'React component was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_react_component
      @react_component = ReactComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def react_component_params
      params.require(:react_component).permit(:nickname, :component_name)

    end
end
