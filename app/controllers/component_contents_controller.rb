class ComponentContentsController < ApplicationController
  before_action :set_component_content, only: [:show, :edit, :update, :destroy]

  # GET /component_contents
  # GET /component_contents.json
  def index
    @component_contents = ComponentContent.all
  end

  # GET /component_contents/1
  # GET /component_contents/1.json
  def show
  end

  # GET /component_contents/new
  def new
    @component_content = ComponentContent.new
  end

  # GET /component_contents/1/edit
  def edit
  end

  # POST /component_contents
  # POST /component_contents.json
  def create
    @component_content = ComponentContent.new(component_content_params)

    respond_to do |format|
      if @component_content.save
        format.html { redirect_to @component_content, notice: 'Component content was successfully created.' }
        format.json { render :show, status: :created, location: @component_content }
      else
        format.html { render :new }
        format.json { render json: @component_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /component_contents/1
  # PATCH/PUT /component_contents/1.json
  def update
    respond_to do |format|
      if @component_content.update(component_content_params)
        format.html { redirect_to @component_content, notice: 'Component content was successfully updated.' }
        format.json { render :show, status: :ok, location: @component_content }
      else
        format.html { render :edit }
        format.json { render json: @component_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /component_contents/1
  # DELETE /component_contents/1.json
  def destroy
    @component_content.destroy
    respond_to do |format|
      format.html { redirect_to component_contents_url, notice: 'Component content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component_content
      @component_content = ComponentContent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def component_content_params
      params.require(:component_content).permit(:value)
    end
end
