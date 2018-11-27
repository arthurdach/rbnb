class Material < ApplicationRecord
  CATEGORIES = %w[ski surf kite velo snowboard skateboard paddle].freeze

  belongs_to :user
  has_many :locations, dependent: :destroy

  validates :category, inclusion: {
    in: CATEGORIES,
    message: "%{value} ne fait pas partie de la liste des catégories autorisées"
  }
end
