class Movie < ApplicationRecord
  has_many :actors
  belongs_to :genre

  validates :title, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :director, presence: true
end
