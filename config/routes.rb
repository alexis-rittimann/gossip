Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'static_pages/home'
  get '/static_pages/contact', to: 'static_pages#contact'
  get '/static_pages/team'
  get '/static_pages/details/:id', to: 'static_pages#details'
end
