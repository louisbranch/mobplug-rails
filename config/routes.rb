Mobplug::Application.routes.draw do
  
  resource :contact, :only => [:show, :create]
  resources :roles, :except => [:show]
  resources :categories
  resources :projects
  resources :sessions, :only => [:create]
  
  match "login" => "sessions#new"
  match "logout" => "sessions#destroy"
  match "home" => "home#index"
  match "about" => "about#index", :as => :about
  
  root :to => "home#index"
  
end
