Rails.application.routes.draw do
  get "/actor", controller: "actors", action: "actors"
end
