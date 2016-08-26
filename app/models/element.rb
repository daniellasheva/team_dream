class Element < ApplicationRecord
  has_many :dreams_elements
  has_many :dreams, through: :dreams_elements
  has_many :users, through: :dreams

end
