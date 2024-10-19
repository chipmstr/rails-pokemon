class Pokeball < ApplicationRecord
  belongs_to :trainer
  belongs_to :pokemon

  # ensure that a trainer is selected before saving the pokeball
  validates :trainer_id, presence: true
  validates :location, presence: true # ensure location is provided
  validates :caught_on, presence: true # ensure date of catching is provided
end
