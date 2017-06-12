class TipoMezcalesController < ApplicationController
  before_action :authorize
  before_action :set_tipo_mezcal, only: [:show, :edit, :update, :destroy]

  # GET /tipo_mezcales
  # GET /tipo_mezcales.json
  def index
    @tipo_mezcales = TipoMezcal.all
  end

  # GET /tipo_mezcales/1
  # GET /tipo_mezcales/1.json
  def show
  end

  # GET /tipo_mezcales/new
  def new
    @tipo_mezcal = TipoMezcal.new
  end

  # GET /tipo_mezcales/1/edit
  def edit
  end

  # POST /tipo_mezcales
  # POST /tipo_mezcales.json
  def create
    @tipo_mezcal = TipoMezcal.new(tipo_mezcal_params)

    respond_to do |format|
      if @tipo_mezcal.save
        format.html { redirect_to @tipo_mezcal, notice: 'Tipo mezcal creado exitosamente.' }
        format.json { render :show, status: :created, location: @tipo_mezcal }
      else
        format.html { render :new }
        format.json { render json: @tipo_mezcal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_mezcales/1
  # PATCH/PUT /tipo_mezcales/1.json
  def update
    respond_to do |format|
      if @tipo_mezcal.update(tipo_mezcal_params)
        format.html { redirect_to @tipo_mezcal, notice: 'Tipo mezcal actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @tipo_mezcal }
      else
        format.html { render :edit }
        format.json { render json: @tipo_mezcal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_mezcales/1
  # DELETE /tipo_mezcales/1.json
  def destroy
    respond_to do |format|
      if @tipo_mezcal.destroy
        format.html { redirect_to tipo_mezcales_url, notice: 'Tipo mezcal eliminado exitosamente.' }
        format.json { head :no_content }
      else
        format.html { redirect_to tipo_mezcales_url, alert: @tipo_mezcal.errors.full_messages }
        format.json { render json: @tipo_mezcal.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_mezcal
      @tipo_mezcal = TipoMezcal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_mezcal_params
      params.require(:tipo_mezcal).permit(:nombre)
    end
end
