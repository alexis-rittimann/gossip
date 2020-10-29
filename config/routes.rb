Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/static_pages/contact', to: 'static_pages#contact'
  get '/static_pages/team'

  resources :gossips
  resources :users, only: [:show, :new, :create]
  resources :cities, only: [:show]
  resources :sessions, only: [:new, :create, :destroy]
end
