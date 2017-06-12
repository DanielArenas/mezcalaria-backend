class SesionesController < ApplicationController
  layout 'login'

  def new
  end

  def create
    usuario = Usuario.find_by_email(params[:email])
    if usuario && usuario.authenticate(params[:password])
      session[:usuario_id] = usuario.id
      redirect_to root_url, notice:  'Ha ingresado al sistema'
    else
      flash.now.alert = 'El email o el password es inválido'
      render 'new'
    end
  end

  def destroy
    session[:usuario_id] = nil
    redirect_to login_url, notice:  'Has salido del sistema'
  end
end
