Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :employees, controllers: { invitations: 'employees/invitations' }

  get "employee", to: "sessions#login"
  post "employee", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  get "home", to: "home#index"
  
  root 'home#index'

end