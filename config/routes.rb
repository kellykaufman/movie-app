Rails.application.routes.draw do
  get "/actors" => "actors#index"

  get "/movies" => "movies#index"

  post "/movies" => "movies#show"

  get "/movies/:id" => "movies#show"

  get "/actor" => "actors#show"

  get "/actors/:id" => "actors#show"

  post "/actors" => "actors#show"
end
