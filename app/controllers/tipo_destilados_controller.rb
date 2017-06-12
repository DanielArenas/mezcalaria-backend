class TipoDestiladosController < ApplicationController
  before_action :authorize
  before_action :set_tipo_destilado, only: [:show, :edit, :update, :destroy]

  # GET /tipo_destilados
  # GET /tipo_destilados.json
  def index
    @tipo_destilados = TipoDestilado.all
  end

  # GET /tipo_destilados/1
  # GET /tipo_destilados/1.json
  def show
  end

  # GET /tipo_destilados/new
  def new
    @tipo_destilado = TipoDestilado.new
  end

  # GET /tipo_destilados/1/edit
  def edit
  end

  # POST /tipo_destilados
  # POST /tipo_destilados.json
  def create
    @tipo_destilado = TipoDestilado.new(tipo_destilado_params)

    respond_to do |format|
      if @tipo_destilado.save
        format.html { redirect_to @tipo_destilado, notice: 'Tipo destilado creado exitosamente.' }
        format.json { render :show, status: :created, location: @tipo_destilado }
      else
        format.html { render :new }
        format.json { render json: @tipo_destilado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_destilados/1
  # PATCH/PUT /tipo_destilados/1.json
  def update
    respond_to do |format|
      if @tipo_destilado.update(tipo_destilado_params)
        format.html { redirect_to @tipo_destilado, notice: 'Tipo destilado actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @tipo_destilado }
      else
        format.html { render :edit }
        format.json { render json: @tipo_destilado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_destilados/1
  # DELETE /tipo_destilados/1.json
  def destroy
    respond_to do |format|
      if @tipo_destilado.destroy
        format.html { redirect_to tipo_destilados_url, notice: 'Tipo destilado eliminado exitosamente.' }
        format.json { head :no_content }
      else
        format.html { redirect_to tipo_destilados_url, alert: @tipo_destilado.errors.full_messages }
        format.json { render json: @tipo_destilado.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_destilado
      @tipo_destilado = TipoDestilado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_destilado_params
      params.require(:tipo_destilado).permit(:nombre)
    end
end
