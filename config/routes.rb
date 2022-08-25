Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/reviews', to: 'reviews#index'
  get '/reviews/:id', to: 'reviews#show'
  get '/reviews/by_movie/:id', to: 'reviews#reviews_by_movie'
  
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  
  get '/movies', to: 'movies#index'
  get '/movies/:id', to: 'movies#show'

  get '/movies/title/:title', to: 'movies#title'

  get '/movies/reviews/all', to: 'movies#show_movies_and_reviews'

  post '/post', to: 'reviews#post_review'
end
