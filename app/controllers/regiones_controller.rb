class RegionesController < ApplicationController
  before_action :authorize
  before_action :set_region, only: [:show, :edit, :update, :destroy]

  # GET /regiones
  # GET /regiones.json
  def index
    @regiones = Region.all
  end

  # GET /regiones/1
  # GET /regiones/1.json
  def show
  end

  # GET /regiones/new
  def new
    @region = Region.new
  end

  # GET /regiones/1/edit
  def edit
  end

  # POST /regiones
  # POST /regiones.json
  def create
    @region = Region.new(region_params)

    respond_to do |format|
      if @region.save
        format.html { redirect_to @region, notice: 'Región creada exitosamente.' }
        format.json { render :show, status: :created, location: @region }
      else
        format.html { render :new }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regiones/1
  # PATCH/PUT /regiones/1.json
  def update
    respond_to do |format|
      if @region.update(region_params)
        format.html { redirect_to @region, notice: 'Región actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @region }
      else
        format.html { render :edit }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regiones/1
  # DELETE /regiones/1.json
  def destroy
    respond_to do |format|
      if @region.destroy
        format.html { redirect_to regiones_url, notice: 'Región eliminada exitosamente.' }
        format.json { head :no_content }
      else
        format.html { redirect_to regiones_url, alert: @region.errors.full_messages }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region
      @region = Region.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def region_params
      params.require(:region).permit(:nombre, :estado_id)
    end
end
