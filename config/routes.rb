Rails.application.routes.draw do
  get "/actor" => "actors#actors"

  get "/movies" => "movies#all_movies"

  post "/one_movie" => "movies#one_movie"
end
