class ReviewsController < ApplicationController

  def index
    review = Review.all
    render json: review
  end

  def show
    review = Review.find(params[:id])
    render json: review
  end
end
