AirlinesApp::Application.routes.draw do
  root :to => 'pages#home'

  resources :flights, only: [:index, :show, :update]
  resources :reservations

  # Flight specific search route
  get '/flights/:origin/:destination', to: 'flights#search'
  get '/flights/:flight_id/seats/', to: 'seats#show'
  # ActiveAdmin Routes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Devise Routes
  devise_for :users
  ActiveAdmin.routes(self)




end
