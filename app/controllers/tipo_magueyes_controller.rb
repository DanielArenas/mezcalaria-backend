class TipoMagueyesController < ApplicationController
  before_action :authorize
  before_action :set_tipo_maguey, only: [:show, :edit, :update, :destroy]

  # GET /tipo_magueyes
  # GET /tipo_magueyes.json
  def index
    @tipo_magueyes = TipoMaguey.all
  end

  # GET /tipo_magueyes/1
  # GET /tipo_magueyes/1.json
  def show
  end

  # GET /tipo_magueyes/new
  def new
    @tipo_maguey = TipoMaguey.new
  end

  # GET /tipo_magueyes/1/edit
  def edit
  end

  # POST /tipo_magueyes
  # POST /tipo_magueyes.json
  def create
    @tipo_maguey = TipoMaguey.new(tipo_maguey_params)

    respond_to do |format|
      if @tipo_maguey.save
        format.html { redirect_to @tipo_maguey, notice: 'Tipo maguey creado exitosamente.' }
        format.json { render :show, status: :created, location: @tipo_maguey }
      else
        format.html { render :new }
        format.json { render json: @tipo_maguey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_magueyes/1
  # PATCH/PUT /tipo_magueyes/1.json
  def update
    respond_to do |format|
      if @tipo_maguey.update(tipo_maguey_params)
        format.html { redirect_to @tipo_maguey, notice: 'Tipo maguey actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @tipo_maguey }
      else
        format.html { render :edit }
        format.json { render json: @tipo_maguey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_magueyes/1
  # DELETE /tipo_magueyes/1.json
  def destroy
    respond_to do |format|
      if @tipo_maguey.destroy
        format.html { redirect_to tipo_magueyes_url, notice: 'Tipo maguey eliminado exitosamente.' }
        format.json { head :no_content }
      else
        format.html { redirect_to tipo_magueyes_url, alert: @tipo_maguey.errors.full_messages }
        format.json { render json: @tipo_maguey.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_maguey
      @tipo_maguey = TipoMaguey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_maguey_params
      params.require(:tipo_maguey).permit(:nombre)
    end
end
