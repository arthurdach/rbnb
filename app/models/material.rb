class Material < ApplicationRecord
  CATEGORIES = %w[ski surf kite velo snowboard skateboard paddle].freeze
  belongs_to :user
  has_many :locations, dependent: :destroy
  has_many :material_reviews, dependent: :destroy

  validates :category, inclusion: {
    in: CATEGORIES,
    message: "%{value} ne fait pas partie de la liste des catégories autorisées"
  }
  mount_uploader :photo, PhotoUploader
end
