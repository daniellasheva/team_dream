class User < ApplicationRecord
  has_many :dreams
  #has_many :
  has_many :elements, through: :dreams

  has_secure_password

  def sorted_dreams
    self.dreams.sort_by do |dream|
      dream.date
    end.reverse
  end

  def clean_date_of_birth
    self.date_of_birth.to_formatted_s(:long_ordinal)
  end
end
