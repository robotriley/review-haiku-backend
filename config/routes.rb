Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/reviews', to: 'reviews#index'
  get '/reviews/:id', to: 'reviews#show'
  
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  
  get '/movies', to: 'movies#index'
  get '/movies/:id', to: 'movies#show'


end
