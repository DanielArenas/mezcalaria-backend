class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  include SessionsHelper

  private

  def current_user
    @current_user ||= Usuario.find(session[:usuario_id]) if session[:usuario_id]
  end

  def usuario_actual
    current_user
  end

  def current_usuario
    current_user
  end
  helper_method :current_user, :current_usuario, :usuario_actual

  def authorize
    redirect_to login_url, alert: 'No estás autorizado para ver este contenido' unless usuario_actual
  end

  def authorize_user_or_api
    usuario_actual || authorize_with_api
  end

  def authorize_with_api
    authenticate_or_request_with_http_token do |token, options|
      Usuario.find_by_access_token(token)
    end
  end
end
