Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :pictures
  # 
  root 'sessions#guest_welcome'

  resources :pictures 

  resources :users

  resources :tags

  resources :comments

  post '/received_comments' => 'user#received_comments', as: 'received_comments'

  post '/trending' => 'tag#trending', as: 'trending'

  post '/most_popular' => 'tag#most_popular', as: 'most_popular'

  get '/signup', to: 'users#new'

  post 'login', to: 'sessions#create'

  get 'login', to: 'sessions#new'

  get 'welcome', to: 'sessions#welcome'

  delete '/signout', to: 'sessions#destroy'

  post '/signout', to: 'sessions#destroy'

  get 'authorized', to: 'sessions#page_requires_login'

  post '/delete/:id', to: 'users#destroy'

end
