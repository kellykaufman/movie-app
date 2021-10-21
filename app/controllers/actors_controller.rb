class ActorsController < ApplicationController
  def index
    render json: Actor.all
  end

  def show
    render json: Actor.find_by(id: params["id"]).as_json
  end

  def create
    actor = { first_name: params["first_name"], last_name: params["last_name"], known_for: params["known_for"] }

    render json: actor.as_json
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for

    render json: actor.as_json
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
    render json: { message: "Actor destroyed successfully!" }
  end
end
