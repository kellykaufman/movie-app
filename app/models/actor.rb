class Actor < ApplicationRecord
  belongs_to :movie

  validates :first_name, presence: true, length: { in: 2..12 }

  validates :last_name, presence: true, length: { in: 2..12 }

  validates :known_for, presence: true

  validates :age, numericality: { only_integer: true, greater_than: 13 }

  def plot
    actor = Actor.find_by(movie_id: params[:movie_id])
    actor.plot
  end
end
