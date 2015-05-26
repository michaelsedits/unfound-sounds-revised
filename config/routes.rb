Rails.application.routes.draw do
  get 'password_resets/create'

  get 'password_resets/edit'

  get 'password_resets/update'
  
  get 'rounds/signup'
  
  get 'rounds/:id/participants' => "rounds#participants", :as => "participants"

  resources :finds

  resources :features

  root 'rounds#index'
  
  resources :hints

  resources :albums

  resources :finders

  resources :places

  resources :rounds
  
  resources :password_resets
  
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :users
  resources :sessions
  
  resources :charges
  
  get ":id" => "users#show", :as => "profile"
end
