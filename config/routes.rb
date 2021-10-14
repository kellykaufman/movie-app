Rails.application.routes.draw do
  get "/actor", controller: "actors", action: "actors"

  get "/movies" => "movies#all_movies"

  get "/one_movie" => "movies#one_movie"
end
