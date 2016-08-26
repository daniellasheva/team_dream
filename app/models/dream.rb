class Dream < ApplicationRecord
  belongs_to :user, optional: true
  has_many :dreams_elements
  has_many :elements, through: :dreams_elements
end
