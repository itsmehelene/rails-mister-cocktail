class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, presence: true
  # validates :cocktail, uniqueness: true
  # validates :ingredient, uniqueness: true
  # validates_associated :cocktail, :ingredient
  validates_uniqueness_of :ingredient, scope: :cocktail_id
end
