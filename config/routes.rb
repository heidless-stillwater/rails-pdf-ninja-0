Rails.application.routes.draw do
  resources :apods
  resources :weathers
  resources :images
  resources :pdfs
  resources :articles 
  resources :apods 
  
  # resources :articles, only: [:show, :index, :new, :create, :edit, :destroy]

  devise_for :users, :controllers => { :registrations => 'registrations' }
  root 'welcome#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

