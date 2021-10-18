Rails.application.routes.draw do
  get "/actor" => "actors#actors"

  get "/movies" => "movies#all_movies"

  post "/one_movie" => "movies#one_movie"

  get "/find_movie" => "movies#find_movie"

  get "/single_actor" => "actors#actor_query"

  get "/single_actor/:wildcard" => "actors#actor_seg"

  post "/single_actor" => "actors#actor_body"
end
