Rails.application.routes.draw do
  resources :nodes
  resources :regions
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :places
  resources :images
  resources :cities do
    collection do 
      get :get_cities
    end 
  end

  resources :states do
    collection do
      get :get_states
      end
    end

  resources :countries
  resources :user_regions
  resources :user_roles
  resources :companies
  devise_for :users
  resources :manage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'companies#index'
end
