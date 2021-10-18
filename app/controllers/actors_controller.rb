class Actor < ApplicationRecord
  def actors
    puts Actor.id
  end

  def actor_query
    id = Actor.find_by(id: params["id"])
    actor = params[id]
    render json: { message: actor }
  end

  # def actor_seg
  #   id = params[:wildcard]
  #   find_actor = Actor.find_by (id: id)
  #   render json: { message: actor }
  # end

  def actor_body
    id = params["actor"]
    find_actor = Actor.find_by(id: id)
    render json: { message: find_actor }
  end
end
