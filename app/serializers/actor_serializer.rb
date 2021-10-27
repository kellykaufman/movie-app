class ActorSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :first_name, :last_name, :known_for, :gender, :age
end
