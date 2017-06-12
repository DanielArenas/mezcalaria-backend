class MezcalesController < ApplicationController
  before_action :authorize, except: [:index, :show]
  before_action :authorize_user_or_api, only: [:index, :show]
  before_action :set_mezcal, only: [:show, :edit, :update, :destroy]

  # GET /mezcales
  # GET /mezcales.json
  def index

    if params[:lan]
      lan = params[:lan] == "es" ? 1 : 2;
      @mezcales = Mezcal.includes(:marca, :tipo_maguey, :zona_produccion).where(language: lan)
    else
      @mezcales = Mezcal.includes(:marca, :tipo_maguey, :zona_produccion).all
    end
  end

  # GET /mezcales/1
  # GET /mezcales/1.json
  def show
  end

  # GET /mezcales/new
  def new
    @mezcal = Mezcal.new
  end

  # GET /mezcales/1/edit
  def edit
  end

  # POST /mezcales
  # POST /mezcales.json
  def create
    @mezcal = Mezcal.new(mezcal_params)

    respond_to do |format|
      if @mezcal.save
        format.html { redirect_to @mezcal, notice: 'Mezcal creado exitosamente.' }
        format.json { render :show, status: :created, location: @mezcal }
      else
        format.html { render :new }
        format.json { render json: @mezcal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mezcales/1
  # PATCH/PUT /mezcales/1.json
  def update
    respond_to do |format|
      if @mezcal.update(mezcal_params)
        format.html { redirect_to @mezcal, notice: 'Mezcal actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @mezcal }
      else
        format.html { render :edit }
        format.json { render json: @mezcal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mezcales/1
  # DELETE /mezcales/1.json
  def destroy
    respond_to do |format|
      if @mezcal.destroy
        format.html { redirect_to mezcales_url, notice: 'Mezcal eliminado exitosamente.' }
        format.json { head :no_content }
      else
        format.html { redirect_to mezcales_url, alert: @mezcal.errors.full_messages }
        format.json { render json: @mezcal.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mezcal
      @mezcal = Mezcal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mezcal_params
      params.require(:mezcal).permit(:nombre, :tipo_mezcal_id, :tipo_maguey_id, :tipo_destilado_id, :marca_id, :precio_promedio, :zona_produccion_id, :maestro_mezcalero, :certificado, :lugares_venta, :comentario_maestro, :fotografia, :agave_distillation, :history_mezcal, :language)
    end

end
