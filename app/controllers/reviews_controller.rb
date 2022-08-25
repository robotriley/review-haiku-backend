class ReviewsController < ApplicationController

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
end
