class User < ApplicationRecord
  has_many :dreams
  has_many :elements, through: :dreams

  has_secure_password

  validates :name, :username, :date_of_birth, :gender, :favorite_animal, :password, presence: true
  validates :gender, inclusion: { in: %w(male female other), message: "%{value} is not a valid gender" }

  def sorted_dreams
    self.dreams.sort_by do |dream|
      dream.date
    end.reverse
  end

  def clean_date_of_birth
    self.date_of_birth.to_formatted_s(:long_ordinal)
  end
end
