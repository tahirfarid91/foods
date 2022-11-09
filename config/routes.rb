Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :employees, 
    controllers: { invitations: 'employees/invitations', sessions: 'employees/sessions' }

  resources :menus
  resources :food_items
  resources :categories
  
  get "home", to: "home#index"
 
  root 'home#index'
end
