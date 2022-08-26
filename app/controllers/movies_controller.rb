class MoviesController < ApplicationController

  protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token

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
    movie = Movie.find_by("title like ?", "%#{params[:title]}%")
    render json: [movie]
  end

  def show_movies_and_reviews
    movies = Movie.all
    mov_arr = movies.map {|movie| {id: movie["id"], title: movie["title"], director: movie["director"], genre: movie["genre"], poster: movie["poster"], year: movie["year"], length: movie["length"], reviews: Review.where(movie_id: movie["id"])}}
    render json: mov_arr
    # reviews = Review.where(movie_id:movie["id"])
    # render json: {movie: movie, reviews: reviews}
  end

  def post_movie
    movie = Movie.create(title: params[:title], director: params[:director], genre: params[:genre], year: params[:year])

  end 

  def delete_movie
    movie = Movie.destroy(params[:id])
  end
end
