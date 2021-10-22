class Actor < ApplicationRecord
  validates :first_name, presence: true, length: { in: 2..12 }

  validates :last_name, presence: true, length: { in: 2..12 }

  validates :known_for, presence: true

  validates :age, numericality: { only_integer: true, greater_than: 13 }
end
