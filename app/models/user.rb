class User < ApplicationRecord
  has_many :dreams
  #has_many :
  has_many :elements, through: :dreams
end
