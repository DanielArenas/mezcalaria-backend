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


    android_users = Usuario.where(type_device: 'android', language: @news.language).pluck(:device_id)
    ios_users = Usuario.where(type_device: 'ios', language: @news.language).pluck(:device_id)

    send_android(android_users, @news.tittle)
    send_ios(ios_users, @news.tittle)


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


  def send_android(users, msg)
    begin

      app = RailsPushNotifications::GCMApp.new
      app.gcm_key = 'AIzaSyB7qnkDzGVRZPlhlJGTf0-QDajhK5beaek'
      app.save

      if app.save
        notif = app.notifications.build(
          destinations: users,
          data: { text: msg, message: msg, title: msg }
        )

        if notif.save
          app.push_notifications
          notif.reload
        else
          puts " ** Notifi save ** "
        end
      else
        puts " Error in save app "
      end

    rescue => ex
      puts " Error in notification "
      puts ex.message
      puts " *** --- *** --- *** "
    end    
  end


  def send_ios(users, msg)

    file = File.expand_path('../../../config/certificado/cert.pem',  __FILE__)
    cert = File.open(file, "rb")
    contents = cert.read    

    begin

      app = RailsPushNotifications::APNSApp.new
      app.apns_dev_cert = contents
      app.apns_prod_cert = contents
      app.sandbox_mode = true

      if app.save
        notif = app.notifications.build(
          destinations: users,
          data: { aps: { alert: msg, sound: 'true', badge: 1 } }
        )
        if notif.save
          app.push_notifications
          notif.reload
        else
          puts " ** Notifi save ** "
        end
      else
        puts " Error in save app "
      end

    rescue => ex
      puts " Error in notification "
      puts ex.message
      puts " *** --- *** --- *** "
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
