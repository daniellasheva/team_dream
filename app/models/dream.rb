class Dream < ApplicationRecord
  belongs_to :user, optional: true
  has_many :dreams_elements
  has_many :elements, through: :dreams_elements

  def clean_date
    self.date.to_formatted_s(:long_ordinal)
  end

end
