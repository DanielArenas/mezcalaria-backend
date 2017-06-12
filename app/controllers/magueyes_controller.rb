class MagueyesController < ApplicationController
  before_action :authorize, except: [:index, :show]
  before_action :authorize_user_or_api, only: [:index, :show]
  before_action :set_maguey, only: [:show, :edit, :update, :destroy]

  # GET /magueyes
  # GET /magueyes.json
  def index

    if params[:lan]
      lan = params[:lan] == "es" ? 1 : 2;
      @magueyes = Magueye.where(language: lan)
    else
      @magueyes = Magueye.all  
    end
  end

  # GET /magueyes/1
  # GET /magueyes/1.json
  def show
  end

  # GET /magueyes/new
  def new
    @maguey = Magueye.new
  end

  # GET /magueyes/1/edit
  def edit
  end

  # POST /magueyes
  # POST /magueyes.json
  def create
    @maguey = Magueye.new(maguey_params)

    respond_to do |format|
      if @maguey.save
        format.html { redirect_to @maguey, notice: 'Magueye was successfully created.' }
        format.json { render :show, status: :created, location: @maguey }
      else
        format.html { render :new }
        format.json { render json: @maguey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /magueyes/1
  # PATCH/PUT /magueyes/1.json
  def update
    respond_to do |format|
      if @maguey.update(maguey_params)
        format.html { redirect_to @maguey, notice: 'Magueye was successfully updated.' }
        format.json { render :show, status: :ok, location: @maguey }
      else
        format.html { render :edit }
        format.json { render json: @maguey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magueyes/1
  # DELETE /magueyes/1.json
  def destroy
    @maguey.destroy
    respond_to do |format|
      format.html { redirect_to magueyes_url, notice: 'Magueye was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maguey
      @maguey = Magueye.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maguey_params
      params.require(:magueye).permit(:title, :sub_title, :description, :image, :language)
    end
end
