class ReviewsController < ApplicationController
    
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token

  def index
    review = Review.all
    render json: review
  end

  def show
    review = Review.find(params[:id])
    
    render json: review
  end

  def reviews_by_movie
    reviews = Review.where(movie_id:params[:id])
    render json: reviews
  end

  def post_review
    user = User.find_by(user_name: params[:user_name])

    movie = Movie.find_by(title: params[:movie_name])

    review = Review.create(line_1: params[:line_1], line_2: params[:line_2], line_3: params[:line_3], star_num: params[:star_num], user_id: user["id"], movie_id: movie["id"])
    
    render json: review
  end
end
