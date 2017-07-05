module Api
  class UsersController < ApplicationController
    
    before_action :authorize_user_or_api, only: [:set_token]
    before_action :set_user, only: [:show, :edit, :update, :destroy, :set_token]


    def set_token
      @user.device_id = params[:token][:token]
      @user.type_device = params[:token][:os]
      render json: @user.save, status: 200
    end

    # GET /users
    def index
      @users = Usuario.all
    end

    # GET /users/1
    def show
      if @user
        render json: @user, status: 200
      else
        render text: "Unidentified user", status: 422
      end
    end

    # GET /users/new
    def new
      @user = Usuario.new
    end

    # GET /users/1/edit
    def edit
      if @user
        render json: @user, only: [:email, :name],  status: 200
      else
        render text: "Unidentified user", status: 422
      end
    end

    # POST /users
    def create      
      @user = Usuario.new(user_params)
      @user.rol_id = 2

      if @user.save
        render text: @user.access_token, status: 201
      else
        render json: @user.errors, status: 422
      end
    end

    # PATCH/PUT /users/1
    def update
      if @user.update_attributes(user_params)
        render text: "Account has been updated successfully", status: 200
      else
        render json: @user.errors, status: 422
      end
    end

    # DELETE /users/1
    def destroy
      if @user.destroy
        render text: "Account has been deleted successfuly", status: 200
      else
        render text: "Something went wrong", status: 422
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = Usuario.find_by(access_token: params[:access_token])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation, :language)
      end

  end
end
