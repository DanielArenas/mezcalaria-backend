class NewsController < ApplicationController
  before_action :authorize, except: [:index, :show]
  before_action :authorize_user_or_api, only: [:index, :show]
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  # GET /news
  # GET /news.json
  def index
    if params[:lan]
      lan = params[:lan] == "es" ? 1 : 2;
      @news = News.where(language: lan).order(created_at: :desc)
    else
      @news = News.all.order(created_at: :desc)
    end
  end

  # GET /news/1
  # GET /news/1.json
  def show
  end

  # GET /news/new
  def new
    @news = News.new
  end

  # GET /news/1/edit
  def edit
  end

  # POST /news
  # POST /news.json
  def create
    @news = News.new(news_params)

    begin

      app = RailsPushNotifications::GCMApp.new
      app.gcm_key = 'AIzaSyB7qnkDzGVRZPlhlJGTf0-QDajhK5beaek'
      app.save
      
      #send notification to user android
      notif = app.notifications.build(
        destinations: Usuario.where(type_device: 'android').pluck(:device_id),
        data: { text: @news.tittle }
      )

      if notif.save
        app.push_notifications
        notif.reload
      end
    rescue => ex
      puts " Error in notification "
      puts ex.message
      puts " *** --- *** --- *** "
    end

    respond_to do |format|
      if @news.save
        format.html { redirect_to @news, notice: 'News was successfully created.' }
        format.json { render :show, status: :created, location: @news }
      else
        format.html { render :new }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news/1
  # PATCH/PUT /news/1.json
  def update
    respond_to do |format|
      if @news.update(news_params)
        format.html { redirect_to @news, notice: 'News was successfully updated.' }
        format.json { render :show, status: :ok, location: @news }
      else
        format.html { render :edit }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    @news.destroy
    respond_to do |format|
      format.html { redirect_to news_index_url, notice: 'News was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news
      @news = News.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_params
      params.require(:news).permit(:tittle, :description, :video, :photo, :language)
    end
end
