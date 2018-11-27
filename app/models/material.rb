class Material < ApplicationRecord
  belongs_to :user
  # belongs_to :type
  validates :category, inclusion: { in: CATEGORIES, message: "%{value} is not a valid category" }

  CATEGORIES = [
    "sky",
    "surf",
    "kitesurf"
  ]


end
