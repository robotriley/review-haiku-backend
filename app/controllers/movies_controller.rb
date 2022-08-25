class MoviesController < ApplicationController

  def index
    movie = Movie.all
    render json: movie
  end

  def show
    movie = Movie.find(params[:id])
    reviews = Review.where(movie_id: movie.id)
    render json: {movie: movie, reviews: reviews}
  end

  def title
    movie = Movie.find_by(title: params[:title])
    render json: [movie]
  end

  def show_movies_and_reviews
    movies = Movie.all
    mov_arr = movies.map {|movie| {id: movie["id"], title: movie["title"], director: movie["director"], genre: movie["genre"], poster: movie["poster"], year: movie["year"], length: movie["length"], reviews: Review.where(movie_id: movie["id"])}}
    render json: mov_arr
    # reviews = Review.where(movie_id:movie["id"])
    # render json: {movie: movie, reviews: reviews}
  end
end
