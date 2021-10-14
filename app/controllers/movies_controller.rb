class MoviesController < ApplicationController
  def all_movies
    movies = Movie.all
    render json: { message: movies }
  end

  def one_movie
    movie = Movie.first
    render json: { message: movie }
  end
end
