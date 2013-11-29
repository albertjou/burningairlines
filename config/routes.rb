AirlinesApp::Application.routes.draw do
  root :to => 'pages#home'

  resources :flights, :reservations
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  ActiveAdmin.routes(self)




end
