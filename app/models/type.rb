class Type < ApplicationRecord
  has_many :materials, dependent: :destroy
end
