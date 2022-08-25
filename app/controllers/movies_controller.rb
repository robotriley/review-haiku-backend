class MoviesController < ApplicationController

  def index
    movie = Movie.all
    render json: movie
  end

  def show
    movie = Movie.find(params[:id])
    render json: movie
  end

  def title
    movie = Movie.find_by(title: params[:title])
    render json: [movie]
  end
end
