class MaterialReview < ApplicationRecord
  RATINGS = [0, 1, 2, 3, 4, 5].freeze
  belongs_to :material
  validates :rating, inclusion: {
    in: RATINGS,
    message: "Veuillez noter de 0 à 5"
  }
end
