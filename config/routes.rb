Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => 'registrations' }
  resources :users, only: [:index, :show, :edit, :update] do
    member do 
      delete 'delete_image/:image_id', action: 'delete_image', as: 'delete_image'
    end
  end

  resources :images
  resources :pdfs
  resources :articles 
  # resources :articles, only: [:show, :index, :new, :create, :edit, :destroy]

  root 'welcome#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

