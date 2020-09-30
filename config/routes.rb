Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :pictures
  # 
  root 'sessions#guest_welcome'

  resources :pictures 

  get '/users/new', to: 'users#new', as: 'users'

  get '/users', to: 'users#show'

  get '/signup', to: 'users#new'

  post 'login', to: 'sessions#create'

  get 'login', to: 'sessions#new'

  post '/users/new', to: 'users#create'

  get 'welcome', to: 'sessions#welcome'

  get 'guest/welcome', to: 'sessions#guest_welcome'

  delete '/signout', to: 'sessions#destroy'

  post '/signout', to: 'sessions#destroy'

  patch '/addphoto/:id', to: 'pictures#create'

  get 'authorized', to: 'sessions#page_requires_login'

  post '/delete/:id', to: 'users#destroy'

end
