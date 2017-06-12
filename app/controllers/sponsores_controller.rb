class SponsoresController < ApplicationController
  before_action :authorize, except: [:index, :show]
  before_action :authorize_user_or_api, only: [:index, :show]
  before_action :set_sponsor, only: [:show, :edit, :update, :destroy]

  # GET /sponsores
  # GET /sponsores.json
  def index

    if params[:lan]
      lan = params[:lan] == "es" ? 1 : 2;
      @sponsores = Sponsor.where(language: lan).order(outstanding: :desc)
    else
      @sponsores = Sponsor.all.order(outstanding: :desc)
    end
  end

  # GET /sponsores/1
  # GET /sponsores/1.json
  def show
  end

  # GET /sponsores/new
  def new
    @sponsor = Sponsor.new
  end

  # GET /sponsores/1/edit
  def edit
  end

  # POST /sponsores
  # POST /sponsores.json
  def create
    @sponsor = Sponsor.new(sponsor_params)

    respond_to do |format|
      if @sponsor.save
        format.html { redirect_to @sponsor, notice: 'Sponsor was successfully created.' }
        format.json { render :show, status: :created, location: @sponsor }
      else
        format.html { render :new }
        format.json { render json: @sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sponsores/1
  # PATCH/PUT /sponsores/1.json
  def update
    respond_to do |format|
      if @sponsor.update(sponsor_params)
        format.html { redirect_to @sponsor, notice: 'Sponsor was successfully updated.' }
        format.json { render :show, status: :ok, location: @sponsor }
      else
        format.html { render :edit }
        format.json { render json: @sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsores/1
  # DELETE /sponsores/1.json
  def destroy
    @sponsor.destroy
    respond_to do |format|
      format.html { redirect_to sponsores_url, notice: 'Sponsor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsor
      @sponsor = Sponsor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sponsor_params
      params.require(:sponsor).permit(:name, :address, :email, :web_page, :description, :logo_sponsor, :outstanding, :language)
    end
end
