class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres

  has_many :genres, through: :movie_genres

  validates :title, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :director, presence: true
end
