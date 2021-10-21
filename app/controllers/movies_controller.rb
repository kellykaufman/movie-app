class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie.as_json
  end

  def create
    movie = { title: params[:title], year: params[:year], plot: params[:plot], director: params[:director], english: params[:english] }
    render json: movie.as_json
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english] || movie.english
    render json: movie.as_json
  end

  def destroy
    movie = Movie.find_by(id: params[:id])

    movie.destroy
    render json: { message: "Movie deleted!" }
  end
end
