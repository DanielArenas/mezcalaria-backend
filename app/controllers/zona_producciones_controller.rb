class ZonaProduccionesController < ApplicationController
  before_action :authorize
  before_action :set_zona_produccion, only: [:show, :edit, :update, :destroy]

  # GET /zona_producciones
  # GET /zona_producciones.json
  def index
    @zona_producciones = ZonaProduccion.all
  end

  # GET /zona_producciones/1
  # GET /zona_producciones/1.json
  def show
  end

  # GET /zona_producciones/new
  def new
    @zona_produccion = ZonaProduccion.new
  end

  # GET /zona_producciones/1/edit
  def edit
  end

  # POST /zona_producciones
  # POST /zona_producciones.json
  def create
    @zona_produccion = ZonaProduccion.new(zona_produccion_params)

    respond_to do |format|
      if @zona_produccion.save
        format.html { redirect_to @zona_produccion, notice: 'Zona producción creada exitosamente.' }
        format.json { render :show, status: :created, location: @zona_produccion }
      else
        format.html { render :new }
        format.json { render json: @zona_produccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zona_producciones/1
  # PATCH/PUT /zona_producciones/1.json
  def update
    respond_to do |format|
      if @zona_produccion.update(zona_produccion_params)
        format.html { redirect_to @zona_produccion, notice: 'Zona producción actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @zona_produccion }
      else
        format.html { render :edit }
        format.json { render json: @zona_produccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zona_producciones/1
  # DELETE /zona_producciones/1.json
  def destroy
    respond_to do |format|
      if @zona_produccion.destroy
        format.html { redirect_to zona_producciones_url, notice: 'Zona producción eliminada exitosamente.' }
        format.json { head :no_content }
      else
        format.html { redirect_to zona_producciones_url, alert: @zona_produccion.errors.full_messages }
        format.json { render json: @zona_produccion.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zona_produccion
      @zona_produccion = ZonaProduccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zona_produccion_params
      params.require(:zona_produccion).permit(:localidad, :municipio_id)
    end
end
