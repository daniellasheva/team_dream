class Dream < ApplicationRecord
  belongs_to :user, optional: true
  has_many :dreams_elements
  has_many :elements, through: :dreams_elements

  validates :title, :date, presence: true
  validates :dream_type, inclusion: { in: %w(dream nightmare) }

  def clean_date
    self.date.to_formatted_s(:long_ordinal)
  end


  def self.sorted_dreams
    self.all.sort_by do |dream|
      dream.date
    end.reverse
  end
end
