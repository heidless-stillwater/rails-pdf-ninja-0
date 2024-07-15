Rails.application.routes.draw do
  # resources :articles 
  resources :articles, only: [:show, :index, :new, :create, :edit, :destroy]
#  resources :articles, only: [:show]

  resources :images
  devise_for :users, :controllers => { :registrations => 'registrations' }
  root 'welcome#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
