Rails.application.routes.draw do
  ###USER VERBS
  get "/users" => "users#index"

  get "/users/:id" => "users#show"

  post "/users" => "users#create"

  patch "/users/:id" => "users#update"

  delete "/users/:id" => "users#destroy"

  ### ACTOR VERBS
  get "/actors" => "actors#index"

  get "/actor/:id" => "actors#show"

  post "/actors" => "actors#create"

  patch "/actors/:id" => "actors#update"

  delete "actors/:id" => "actors#destroy"

  ### MOVIE VERBS

  get "/movies" => "movies#index"

  get "/movies/:id" => "movies#show"

  post "/movies" => "movies#create"

  patch "/movies/:id" => "movies#update"

  delete "/movies/:id" => "movies#destroy"
end
