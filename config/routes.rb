Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :employees, controllers: { invitations: 'employees/invitations' }

  get "sign_in", to: "sessions#login"
  post "sign_in", to: "sessions#create"

  
  get "home", to: "home#index"

  root 'home#index'
  
end