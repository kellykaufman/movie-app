Rails.application.routes.draw do
  ### ACTOR VERBS
  get "/actors" => "actors#index"

  get "/actor/:id" => "actors#show"

  post "/actors" => "actors#create"

  patch "/actors/:id" => "actors#update"

  delete "actors/:id" => "actors#destroy"

  ### MOVIE VERBS
  # post "/movies" => "movies#show"

  get "/movies" => "movies#index"

  get "/movies/:id" => "movies#show"

  post "/movies" => "movies#create"

  patch "/movies/:id" => "movies#update"

  delete "/movies/:id" => "movies#destroy"
end
