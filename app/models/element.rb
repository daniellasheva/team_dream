class Element < ApplicationRecord
  has_many :dreams_elements
  has_many :dreams, through: :dreams_elements
  has_many :users, through: :dreams

  def sorted_dreams
    self.dreams.sort_by do |dream|
      dream.date
    end.reverse
  end
end
