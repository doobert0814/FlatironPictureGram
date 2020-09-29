Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pictures
  resources :users
  get '/signup', to: 'users#new'
  post 'login', to: 'sessions#new'
  # get 'welcome', to: 'sessions#welcome'
  # get 'authorized', to: 'sessions#page_requires_login'

end
