Rails.application.routes.draw do
  resources :nodes do
    member do 
      get :edit_node
    end 
  end
  resources :regions do
    member do 
      get :edit_region
    end 
  end
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
    
    member do
      get :edit_state
    end
  end

  resources :countries
  resources :user_regions
  resources :user_roles
  resources :companies do
    member do 
      get :edit_company
    end 
  end
  devise_for :users
  resources :manage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'companies#index'
end
