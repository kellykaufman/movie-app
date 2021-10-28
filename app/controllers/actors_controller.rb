class ActorsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    render json: Actor.all
  end

  def show
    render json: Actor.find_by(id: params["id"]).as_json
  end

  def create
    actor = Actor.new({ first_name: params[:first_name], last_name: params[:last_name], known_for: params[:known_for], gender: params[:gender], age: params[:age], movie_id: params[:movie_id] })

    # HAPPY/SAD PATH
    if actor.save
      render json: actor
    else
      render json: { errors: actor.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    actor = Actor.find_by(id: params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.gender = params[:gender] || actor.gender
    actor.age = params[:age] || actor.age
    actor.movie_id = params[:movie_id] || actor.movie_id

    # HAPPY/SAD PATH
    if actor.save
      render json: actor
    else
      render json: { errors: actor.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.destroy
    render json: { message: "Actor destroyed successfully!" }
  end
end
