Mobplug::Application.routes.draw do
  
  resources :categories
  
  resources :projects
  
  resources :sessions, :only => [:create]
  
  match "login" => "sessions#new"
  match "logout" => "sessions#destroy"
  
  root :to => "projects#index"
  
end
