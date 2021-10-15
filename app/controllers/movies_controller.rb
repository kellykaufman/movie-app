class MoviesController < ApplicationController
  def all_movies
    movies = Movie.all
    render json: { message: movies }
  end

  def one_movie
    movie = Movie.first
    render json: { message: movie }
  end

  def find_movie
    input_movie = params["my_message"]
    render json: { message: input_movie }
  end
end
