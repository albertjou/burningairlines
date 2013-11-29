AirlinesApp::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  ActiveAdmin.routes(self)


  root :to => 'pages#home'


end
