Rails.application.routes.draw do

  resources :magueyes

  get 'ingresar', to: 'sesiones#new', as: :login
  delete 'ingresar', to: 'sesiones#destroy', as: :logout

  resources :news
  resources :users
  resources :events
  resources :sponsores
  resources :sesiones
  resources :mezcales
  resources :zona_producciones
  resources :municipios
  resources :regiones
  resources :tipo_mezcales
  resources :marcas
  resources :tipo_destilados
  resources :tipo_magueyes

  root 'mezcales#index'
  #root 'public#index'

  #For movile app
  namespace :api do
    post   'login'   => 'sessions#create'
    delete 'logout'  => 'sessions#destroy'
    get    'verify'  => 'sessions#verify_access_token'
    post   'update_token/:access_token' => 'users#set_token'
    
    resources :users, param: :access_token
    resources :password_resets, only: [:new, :create, :edit, :update]
  end
end
