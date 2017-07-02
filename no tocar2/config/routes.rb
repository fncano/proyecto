Rails.application.routes.draw do
  
  
  resources :roles
  resources :assignments
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', 
    sign_out: 'logout', 
    password: 'secret', 
    confirmation: 'verification', 
    unlock: 'unblock', 
    registration: 'register', 
    sign_up: 'cmon_let_me_in' }
  resources :producciones
  resources :programaciones
  resources :perdidas
  resources :ventas
  resources :insumos
  resources :pedidos
  resources :clientes
  resources :empleados
  get 'static_pages/home'

  get 'static_pages/help'
  
  root :to => 'static_pages#home'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
